# Introduction ---- 
# A tidier and shorter replica of David Firth's model

# Data ----

lookback_rounds <- c(19L, 78L)
number_sims <- 100000

teams <- tibble::tribble(
  ~teamName, ~shortName, ~midName,
  "Arsenal FC", "ARS", "Arsenal",
  "Aston Villa FC", "AST", "Aston Villa",
  "AFC Bournemouth", "BOU", "Bournemouth",
  "Brentford FC", "BRE", "Brentford",
  "Brighton & Hove Albion FC", "BRI", "Brighton",
  "Chelsea FC", "CHE", "Chelsea",
  "Crystal Palace FC", "CPA", "Crystal Palace",
  "Everton FC", "EVE", "Everton",
  "Fulham FC", "FUL", "Fulham",
  "Ipswich Town FC", "IPS", "Ipswich",
  "Leicester City FC", "LEI", "Leicester",
  "Liverpool FC", "LIV", "Liverpool",
  "Manchester City FC", "MCI", "Man City",
  "Manchester United FC", "MUN", "Man Utd",
  "Newcastle United FC", "NEW", "Newcastle",
  "Nottingham Forest FC", "NOT", "Notts Forest",
  "Southampton FC", "SOU", "Southampton",
  "Tottenham Hotspur FC", "TOT", "Tottenham",
  "West Ham United FC", "WHU", "West Ham",
  "Wolverhampton Wanderers FC", "WOL", "Wolves"
)

nTeams <- nrow(teams)
teamNames <- teams$shortName

get_openData <- function(value_path, table_teams, value_yearEnd){
  jsonlite::read_json(
    path = value_path,
    simplifyVector = TRUE
  ) |>
    _$matches |>
    jsonlite::flatten() |>
    dplyr::mutate(
      matchweek = as.integer(stringr::str_sub(round, 10, -1)),
      matchday = lubridate::as_date(date)
    ) |>
    dplyr::select(matchweek, matchday, team1, team2, score.ft) |>
    tidyr::unnest_wider(col = score.ft, names_sep = ".", simplify = TRUE) |>
    dplyr::select(matchweek, matchday, team1, team2, "FTHG" = score.ft.1, "FTAG" = score.ft.2) |>
    dplyr::left_join(table_teams, dplyr::join_by(team1 == teamName)) |>
    dplyr::rename("homeTeam" = shortName) |>
    dplyr::left_join(table_teams, dplyr::join_by(team2 == teamName)) |>
    dplyr::filter(
      !is.na(homeTeam), 
      !is.na(shortName)
    ) |> 
    dplyr::mutate(
      number_match = sprintf("%03d", dplyr::row_number()),
      number_match_integer = dplyr::row_number(),
      FTR = dplyr::case_when(
        FTHG > FTAG ~ "H",
        FTHG == FTAG ~ "D",
        FTHG < FTAG ~ "A",
        .default = NA_character_
      ),
      FTR = factor(FTR, levels = c("A", "D", "H")),
      unplayed = is.na(FTHG) & is.na(FTAG),
      played = !unplayed,
      year_end = value_yearEnd
    ) |>
    dplyr::select(number_match, number_match_integer, matchday, homeTeam, "awayTeam" = shortName, FTHG, FTAG, FTR, played, year_end)
}

results_lastSeason <- get_openData(
  value_path = "en.1.2324.json", 
  table_teams = teams, 
  value_yearEnd = 2024L
)

results_thisSeason <- get_openData(
  value_path = "https://raw.githubusercontent.com/openfootball/football.json/refs/heads/master/2024-25/en.1.json",
  table_teams = teams,
  value_yearEnd = 2025L
)

results_combined <- dplyr::bind_rows(results_lastSeason, results_thisSeason) |> 
  dplyr::mutate(id_match = (year_end * 1000) + number_match_integer) |> 
  dplyr::arrange(id_match) |> 
  dplyr::mutate(
    match = sprintf("%03d", dplyr::row_number()),
    row_order = as.integer(match)
  ) |> 
  dplyr::select(-year_end, -id_match, -number_match, -number_match_integer)

row_order_latest <- results_combined |> 
  dplyr::filter(played) |>  
  dplyr::mutate(
    value_max = max(as.integer(match))
  ) |> 
  dplyr::slice(1) |> 
  dplyr::pull(value_max)


# Looping ----

for (run_count in lookback_rounds) {
  
  row_order_earliest <- row_order_latest - (10 * run_count)
  
  results <- results_combined |>
    dplyr::filter(
      row_order >= row_order_earliest
    ) |>
    dplyr::select(-row_order)
  
  
  # Modelling ----
  
  modelframe <- gnm::expandCategorical(results, "FTR", idvar = "match") |> 
    dplyr::mutate(
      draw = as.numeric(FTR == "D"),
      count = dplyr::if_else((is.na(FTHG) | is.na(FTAG)), NA, count)
    ) |> 
    dplyr::select(dplyr::everything(), count, draw) |> 
    dplyr::mutate(match = forcats::as_factor(match))
  
  X <- matrix(0, nrow(modelframe), 2 * nTeams)
  colnames(X) <- paste0(teamNames, c(rep("_home", nTeams), rep("_away", nTeams)))
  
  for (team in teamNames) {
    X[modelframe$homeTeam == team & modelframe$FTR == "H", paste0(team, "_home")] <- 1
    X[modelframe$homeTeam == team & modelframe$FTR == "D", paste0(team, "_home")] <- 1/3
    X[modelframe$awayTeam == team & modelframe$FTR == "A", paste0(team, "_away")] <- 1
    X[modelframe$awayTeam == team & modelframe$FTR == "D", paste0(team, "_away")] <- 1/3
  }
  
  modelframe_final <- modelframe |> 
    dplyr::mutate(s = X) |> 
    dplyr::select(match, count, draw, s)
  
  model <- gnm::gnm(
    count ~ -1 + s + draw, 
    eliminate = match, 
    family = quasipoisson,
    data = modelframe_final, 
    start = rep(0, 2 * nTeams + 1)
  )
  
  names(model$coefficients) <- c(colnames(X), "draw")
  
  outputs <- summary(model)
  
  details <- outputs$coefficients |> 
    as.data.frame() |> 
    tibble::rownames_to_column("team_location") |> 
    dplyr::select(team_location, "estimate" = Estimate) |> 
    dplyr::rowwise() |> 
    dplyr::mutate(
      estimate_e = exp(estimate),
      homeTeam = dplyr::if_else(stringr::str_ends(team_location, "_home"), stringr::str_sub(team_location, 1, 3), NA_character_),
      awayTeam = dplyr::if_else(stringr::str_ends(team_location, "_away"), stringr::str_sub(team_location, 1, 3), NA_character_)
    ) |> 
    dplyr::ungroup()
  
  parameters <- dplyr::bind_rows(
    details |> 
      dplyr::select("team" = homeTeam, estimate_e) |> 
      dplyr::mutate(location = "home"),
    details |> 
      dplyr::select("team" = awayTeam, estimate_e) |> 
      dplyr::mutate(location = "away")
  ) |> 
    dplyr::filter(!is.na(team)) |> 
    dplyr::select(team, location, estimate_e) |> 
    dplyr::arrange(team, dplyr::desc(location))
  
  games_remaining <- results |> 
    dplyr::filter(
      is.na(FTHG),
      is.na(FTAG)
    ) |> 
    dplyr::select(match, homeTeam, awayTeam) |> 
    dplyr::left_join(parameters |> dplyr::filter(location == "home"), dplyr::join_by(homeTeam == team)) |> 
    dplyr::left_join(parameters |> dplyr::filter(location == "away"), dplyr::join_by(awayTeam == team)) |> 
    dplyr::select(match, "team_home" = homeTeam, "team_away" = awayTeam, "param_home" = estimate_e.x, "param_away" = estimate_e.y) |> 
    dplyr::rowwise() |> 
    dplyr::mutate(
      value_denom = param_home + param_away + ((param_home * param_away) ^ (1/3)),
      prob_home = param_home / value_denom,
      prob_away = param_away / value_denom,
      prob_draw = ((param_home * param_away) ^ (1/3)) / value_denom,
      exp_home = (3 * prob_home) + prob_draw,
      exp_away = (3 * prob_away) + prob_draw
    ) |> 
    dplyr::ungroup()
  
  points_home <- games_remaining |> 
    dplyr::summarise(
      points = sum(exp_home), 
      games = dplyr::n(), 
      .by = team_home
    ) |> 
    dplyr::select("team" = team_home, games, points)
  
  points_away <- games_remaining |> 
    dplyr::summarise(
      points = sum(exp_away), 
      games = dplyr::n(), 
      .by = team_away
    ) |> 
    dplyr::select("team" = team_away, games, points)
  
  points_expected <- dplyr::bind_rows(points_home, points_away) |> 
    dplyr::summarise(
      value = sum(points), 
      games_left = sum(games),
      .by = team
    ) |> 
    dplyr::arrange(dplyr::desc(value), team)
  
  data_tabulated <- results_thisSeason |> 
    dplyr::filter(played) |> 
    dplyr::mutate(
      points_home = dplyr::case_when(
        FTHG > FTAG ~ 3L,
        FTHG == FTAG ~ 1L,
        FTHG < FTAG ~ 0L, 
        .default = NA_integer_
      ),
      points_away = dplyr::case_when(
        FTHG > FTAG ~ 0L,
        FTHG == FTAG ~ 1L,
        FTHG < FTAG ~ 3L, 
        .default = NA_integer_
      ),
      goaldiff_home = FTHG - FTAG,
      goaldiff_away = goaldiff_home * -1
    )
  
  data_table_now <- dplyr::bind_rows(
    data_tabulated |> 
      dplyr::select("team" = homeTeam, "points" = points_home, "goaldiff" = goaldiff_home),
    data_tabulated |> 
      dplyr::select("team" = awayTeam, "points" = points_away, "goaldiff" = goaldiff_away)
  ) |> 
    dplyr::summarise(
      points_total = sum(points),
      goaldiff_total = sum(goaldiff), 
      games_total = dplyr::n(),
      .by = team
    ) |> 
    dplyr::select("Team" = team, "Played" = games_total, "GD" = goaldiff_total, "Points" = points_total)
  
  # data_table_now |> 
  #   dplyr::arrange(dplyr::desc(Points), dplyr::desc(GD))
  
  projections <- data_table_now |> 
    dplyr::arrange(Team) |> 
    dplyr::left_join(points_expected, dplyr::join_by(Team == team)) |> 
    dplyr::mutate(
      points_exp = Points + value, 
      games_exp = Played + games_left
    ) |> 
    dplyr::arrange(dplyr::desc(points_exp), dplyr::desc(GD)) |> 
    dplyr::select(Team, "Played" = games_exp, "Exp_Points" = points_exp)
  
  projections_final_ave <- projections |> 
    dplyr::summarise(
      Exp_Points_Ave = mean(Exp_Points), 
      .by = Team
    ) |> 
    dplyr::arrange(dplyr::desc(Exp_Points_Ave)) |> 
    dplyr::left_join(
      teams, 
      dplyr::join_by(Team == shortName)
    ) |> 
    dplyr::select(midName, Exp_Points_Ave)
  
  simulations <- games_remaining |> 
    dplyr::select(match, team_home, team_away, prob_home, prob_away, prob_draw)
  
  # start by assuming IID
  set.seed(2602)
  game_simulations <- simulations |> 
    tidyr::expand_grid(sim = 1:number_sims) |>
    dplyr::rowwise() |> 
    dplyr::mutate(random = runif(n = 1)) |> 
    dplyr::ungroup() |> 
    dplyr::mutate(
      result = dplyr::case_when(
        random <= prob_home ~ 1L,
        (random > prob_home) & (random <= (prob_home + prob_draw)) ~ 0L,
        random > (prob_home + prob_draw) ~ -1L, 
        .default = NA_integer_
      ),
      points_home = dplyr::case_when(
        result == 1L ~ 3L,
        result == 0L ~ 1L,
        result == -1L ~ 0L,
        .default = NA_integer_
      ),
      points_away = dplyr::case_when(
        result == 1L ~ 0L,
        result == 0L ~ 1L,
        result == -1L ~ 3L,
        .default = NA_integer_
      )
    )
  
  game_sims_home <- game_simulations |> 
    dplyr::select(sim, team_home, points_home) |> 
    dplyr::summarise(
      points_home_total = sum(points_home), 
      n_home = dplyr::n(),
      .by = c(sim, team_home)
    )
  
  game_sims_away <- game_simulations |> 
    dplyr::select(sim, team_away, points_away) |> 
    dplyr::summarise(
      points_away_total = sum(points_away), 
      n_away = dplyr::n(),
      .by = c(sim, team_away)
    )
  
  game_sims_summary <- game_sims_home |> 
    dplyr::left_join(
      game_sims_away, 
      by = dplyr::join_by(sim == sim, team_home == team_away)
    ) |> 
    dplyr::arrange(sim, team_home) |> 
    dplyr::rowwise() |> 
    dplyr::mutate(
      points_total = points_home_total + points_away_total,
      n_total = n_home + n_away
    ) |> 
    dplyr::ungroup() |> 
    dplyr::select(sim, "team" = team_home, points_total, n_total) |> 
    dplyr::left_join(
      data_table_now, 
      by = dplyr::join_by(team == Team)
    ) |>
    dplyr::mutate(
      points_exp = Points + points_total,
      games_exp = Played + n_total
    ) |>
    dplyr::arrange(sim, dplyr::desc(points_exp), dplyr::desc(GD)) |>
    dplyr::select(sim, "Team" = team, "Played" = games_exp, GD, "Exp_Points" = points_exp)
  
  standings_projected <- game_sims_summary |> 
    dplyr::group_by(sim) |> 
    dplyr::mutate(ranking = dplyr::row_number()) |> 
    dplyr::ungroup() |> 
    dplyr::left_join(teams, dplyr::join_by(Team == shortName)) |> 
    dplyr::select(sim, Team, midName, ranking)
  
  standing_likelihoods <- standings_projected |> 
    dplyr::count(midName, ranking, name = "freq") |> 
    tidyr::complete(midName, ranking) |> 
    tidyr::replace_na(replace = list(midName = NA_character_, ranking = NA_integer_, freq = 0L)) |> 
    dplyr::mutate(likelihood = freq / number_sims) |> 
    dplyr::select(-freq)
  
  outcome_likelihoods <- standing_likelihoods |> 
    tidyr::pivot_wider(id_cols = midName, names_from = ranking, names_prefix = "p", values_from = likelihood) |> 
    dplyr::mutate(
      champion = p1,
      top_four = p1 + p2 + p3 + p4,
      top_five = top_four + p5,
      top_six = top_five + p6,
      top_half = top_six + p7 + p8 + p9 + p10,
      relegation = p18 + p19 + p20
    )
  
  table_projections <- outcome_likelihoods |> 
    dplyr::left_join(projections_final_ave, by = dplyr::join_by(midName == midName)) |> 
    dplyr::select(midName, Exp_Points_Ave, champion, top_four, top_five, top_six, top_half, relegation) |> 
    dplyr::arrange(dplyr::desc(Exp_Points_Ave))
  
  table_projections
  
  readr::write_csv(
    x = table_projections, 
    file = paste0("projections", run_count, ".csv")
  )
  
}


# Rendering README ----

rmarkdown::render("README.Rmd")


# Saving log ----

data_log <- data.frame(
  value_date = date(),
  value_rows = nrow(projections)
  )

write.table(
  x = data_log, 
  sep = ",",
  file = "log.csv", 
  row.names = FALSE, 
  col.names = FALSE, 
  append = TRUE
)