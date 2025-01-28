# A tidier and shorter replica of David Firth's model


# Data ----

lookback_rounds <- 38

teams <- tibble::tribble(
  ~teamName, ~shortName,
  "Arsenal FC", "ARS",
  "Aston Villa FC", "AST",
  "AFC Bournemouth", "BOU",
  "Brentford FC", "BRE",  
  "Brighton & Hove Albion FC", "BRI",
  "Chelsea FC", "CHE",      
  "Crystal Palace FC", "CPA",
  "Everton FC", "EVE",
  "Fulham FC", "FUL",
  "Ipswich Town FC", "IPS",
  "Leicester City FC", "LEI",
  "Liverpool FC", "LIV",
  "Manchester City FC", "MCI",
  "Manchester United FC", "MUN",
  "Newcastle United FC", "NEW",
  "Nottingham Forest FC", "NOT",
  "Southampton FC", "SOU",
  "Tottenham Hotspur FC", "TOT",
  "West Ham United FC", "WHU",
  "Wolverhampton Wanderers FC", "WOL"
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
      year_end = value_yearEnd
    ) |>
    dplyr::select(number_match, number_match_integer, matchday, homeTeam, "awayTeam" = shortName, FTHG, FTAG, FTR, unplayed, year_end)
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
  dplyr::mutate(match = sprintf("%03d", dplyr::row_number())) |> 
  dplyr::select(-year_end, -id_match, -number_match, -number_match_integer)


# Modelling ----

modelframe <- gnm::expandCategorical(results_combined, "FTR", idvar = "match") |> 
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


# Projections ----

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
  dplyr::arrange(team, desc(location))

games_remaining <- results_combined |> 
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
  dplyr::filter(!unplayed) |> 
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

projections <- data_table_now |> 
  dplyr::arrange(Team) |> 
  dplyr::left_join(points_expected, dplyr::join_by(Team == team)) |> 
  dplyr::mutate(
    points_exp = Points + value, 
    games_exp = Played + games_left
  ) |> 
  dplyr::arrange(dplyr::desc(points_exp), dplyr::desc(GD)) |> 
  dplyr::select(Team, "Played" = games_exp, "Exp_Points" = points_exp)


# Saving projections ----

readr::write_csv(x = projections, file = "projections.csv", append = FALSE)


# Rendering README ----

rmarkdown::render("README.Rmd")