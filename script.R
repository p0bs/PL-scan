# Introduction ---- 
# A tidier and shorter replica of David Firth's model
library(dplyr)
library(forcats)
library(gnm)
library(jsonlite)
library(lubridate)
library(stringr)
library(tibble)
library(tidyr)

# Data ----

lookback_rounds <- 38

teams <- tribble(
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
  read_json(
    path = value_path,
    simplifyVector = TRUE
  ) |>
    _$matches |>
    flatten() |>
    mutate(
      matchweek = as.integer(str_sub(round, 10, -1)),
      matchday = as_date(date)
    ) |>
    select(matchweek, matchday, team1, team2, score.ft) |>
    unnest_wider(col = score.ft, names_sep = ".", simplify = TRUE) |>
    select(matchweek, matchday, team1, team2, "FTHG" = score.ft.1, "FTAG" = score.ft.2) |>
    left_join(table_teams, join_by(team1 == teamName)) |>
    rename("homeTeam" = shortName) |>
    left_join(table_teams, join_by(team2 == teamName)) |>
    filter(
      !is.na(homeTeam), 
      !is.na(shortName)
    ) |> 
    mutate(
      number_match = sprintf("%03d", row_number()),
      number_match_integer = row_number(),
      FTR = case_when(
        FTHG > FTAG ~ "H",
        FTHG == FTAG ~ "D",
        FTHG < FTAG ~ "A",
        .default = NA_character_
      ),
      FTR = factor(FTR, levels = c("A", "D", "H")),
      unplayed = is.na(FTHG) & is.na(FTAG),
      year_end = value_yearEnd
    ) |>
    select(number_match, number_match_integer, matchday, homeTeam, "awayTeam" = shortName, FTHG, FTAG, FTR, unplayed, year_end)
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

results_combined <- bind_rows(results_lastSeason, results_thisSeason) |> 
  mutate(id_match = (year_end * 1000) + number_match_integer) |> 
  arrange(id_match) |> 
  mutate(match = sprintf("%03d", row_number())) |> 
  select(-year_end, -id_match, -number_match, -number_match_integer)


# Modelling ----

modelframe <- expandCategorical(results_combined, "FTR", idvar = "match") |> 
  mutate(
    draw = as.numeric(FTR == "D"),
    count = if_else((is.na(FTHG) | is.na(FTAG)), NA, count)
    ) |> 
  select(everything(), count, draw) |> 
  mutate(match = as_factor(match))

X <- matrix(0, nrow(modelframe), 2 * nTeams)
colnames(X) <- paste0(teamNames, c(rep("_home", nTeams), rep("_away", nTeams)))

for (team in teamNames) {
  X[modelframe$homeTeam == team & modelframe$FTR == "H", paste0(team, "_home")] <- 1
  X[modelframe$homeTeam == team & modelframe$FTR == "D", paste0(team, "_home")] <- 1/3
  X[modelframe$awayTeam == team & modelframe$FTR == "A", paste0(team, "_away")] <- 1
  X[modelframe$awayTeam == team & modelframe$FTR == "D", paste0(team, "_away")] <- 1/3
}

modelframe_final <- modelframe |> 
  mutate(s = X) |> 
  select(match, count, draw, s)

model <- gnm(
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
  rownames_to_column("team_location") |> 
  select(team_location, "estimate" = Estimate) |> 
  rowwise() |> 
  mutate(
    estimate_e = exp(estimate),
    homeTeam = if_else(str_ends(team_location, "_home"), str_sub(team_location, 1, 3), NA_character_),
    awayTeam = if_else(str_ends(team_location, "_away"), str_sub(team_location, 1, 3), NA_character_)
    ) |> 
  ungroup()

parameters <- bind_rows(
  details |> 
    select("team" = homeTeam, estimate_e) |> 
    mutate(location = "home"),
  details |> 
    select("team" = awayTeam, estimate_e) |> 
    mutate(location = "away")
  ) |> 
  filter(!is.na(team)) |> 
  select(team, location, estimate_e) |> 
  arrange(team, desc(location))

games_remaining <- results_combined |> 
  filter(
    is.na(FTHG),
    is.na(FTAG)
  ) |> 
  select(match, homeTeam, awayTeam) |> 
  left_join(parameters |> filter(location == "home"), join_by(homeTeam == team)) |> 
  left_join(parameters |> filter(location == "away"), join_by(awayTeam == team)) |> 
  select(match, "team_home" = homeTeam, "team_away" = awayTeam, "param_home" = estimate_e.x, "param_away" = estimate_e.y) |> 
  rowwise() |> 
  mutate(
    value_denom = param_home + param_away + ((param_home * param_away) ^ (1/3)),
    prob_home = param_home / value_denom,
    prob_away = param_away / value_denom,
    prob_draw = ((param_home * param_away) ^ (1/3)) / value_denom,
    exp_home = (3 * prob_home) + prob_draw,
    exp_away = (3 * prob_away) + prob_draw
    ) |> 
  ungroup()

points_home <- games_remaining |> 
  summarise(
    points = sum(exp_home), 
    games = n(), 
    .by = team_home
  ) |> 
  select("team" = team_home, games, points)

points_away <- games_remaining |> 
  summarise(
    points = sum(exp_away), 
    games = n(), 
    .by = team_away
  ) |> 
  select("team" = team_away, games, points)

points_expected <- bind_rows(points_home, points_away) |> 
  summarise(
    value = sum(points), 
    games_left = sum(games),
    .by = team
    ) |> 
  arrange(desc(value), team)

data_tabulated <- results_thisSeason |> 
  filter(!unplayed) |> 
  mutate(
    points_home = case_when(
      FTHG > FTAG ~ 3L,
      FTHG == FTAG ~ 1L,
      FTHG < FTAG ~ 0L, 
      .default = NA_integer_
    ),
    points_away = case_when(
      FTHG > FTAG ~ 0L,
      FTHG == FTAG ~ 1L,
      FTHG < FTAG ~ 3L, 
      .default = NA_integer_
    ),
    goaldiff_home = FTHG - FTAG,
    goaldiff_away = goaldiff_home * -1
  )

data_table_now <- bind_rows(
  data_tabulated |> 
    select("team" = homeTeam, "points" = points_home, "goaldiff" = goaldiff_home),
  data_tabulated |> 
    select("team" = awayTeam, "points" = points_away, "goaldiff" = goaldiff_away)
) |> 
  summarise(
    points_total = sum(points),
    goaldiff_total = sum(goaldiff), 
    games_total = n(),
    .by = team
  ) |> 
  select("Team" = team, "Played" = games_total, "GD" = goaldiff_total, "Points" = points_total)

projections <- data_table_now |> 
  arrange(Team) |> 
  left_join(points_expected, join_by(Team == team)) |> 
  mutate(
    points_exp = Points + value, 
    games_exp = Played + games_left
  ) |> 
  arrange(desc(points_exp), desc(GD)) |> 
  select(Team, "Played" = games_exp, "Exp_Points" = points_exp)

readr::write_csv(x = projections, file = "projections.csv", append = FALSE)
