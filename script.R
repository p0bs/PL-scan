# Introduction ----
# A tidier and shorter replica of David Firth's model

# Data ----

number_simulations <- 1000000

teams <- PremPredict::teams
schedule_thisSeason <- PremPredict::schedule_thisSeason

row_order_latest_data <- readr::read_csv(
  file = "https://www.football-data.co.uk/mmz4281/2526/E0.csv",
  col_select = c(HomeTeam, AwayTeam, FTHG, FTAG, Date, Time),
  col_types = readr::cols(
    Date = readr::col_date(format = "%d/%m/%Y")
  )
) |>
  dplyr::filter(Date == max(Date)) |>
  dplyr::filter(Time == max(Time)) |>
  dplyr::slice(1) |>
  dplyr::select(
    "homeTeam" = HomeTeam,
    FTHG,
    FTAG,
    "awayTeam" = AwayTeam,
    "matchday" = Date
  )

data_results_thisSeason <- PremPredict::get_footballData(
  value_link = "https://www.football-data.co.uk/mmz4281/2526/E0.csv",
  table_schedule = schedule_thisSeason,
  table_teams = teams,
  value_yearEnd = 2026L
)

results_combined <- PremPredict::get_results(
  results_thisSeason = data_results_thisSeason,
  seasons = 1L
)

game_latest <- PremPredict::calc_game_latest(results = results_combined)

results_filtered_19 <- PremPredict::get_results_filtered(
  results = results_combined,
  index_game_latest = game_latest,
  lookback_rounds = 19L
)

results_filtered_76 <- PremPredict::get_results_filtered(
  results = results_combined,
  index_game_latest = game_latest,
  lookback_rounds = 76L
)

data_table_current <- data_results_thisSeason |>
  PremPredict::calc_table_current()

data_model_19 <- results_filtered_19 |>
  PremPredict::model_prepare_frame() |>
  PremPredict::model_run()

data_model_76 <- results_filtered_76 |>
  PremPredict::model_prepare_frame() |>
  PremPredict::model_run()

data_parameters_unplayed_19 <- data_model_19 |>
  PremPredict::model_extract_parameters()

data_model_parameters_unplayed_19 <- PremPredict::model_parameters_unplayed(
  results = results_filtered_19,
  model_parameters = data_parameters_unplayed_19
)

data_parameters_unplayed_76 <- data_model_76 |>
  PremPredict::model_extract_parameters()

data_model_parameters_unplayed_76 <- PremPredict::model_parameters_unplayed(
  results = results_filtered_76,
  model_parameters = data_parameters_unplayed_76
)

data_simulate_games_19 <- PremPredict::simulate_games(
  data_model_parameters_unplayed = data_model_parameters_unplayed_19,
  value_number_sims = number_simulations,
  value_seed = 2602L
)

data_simulate_standings_19 <- PremPredict::simulate_standings(
  data_game_simulations = data_simulate_games_19,
  data_table_latest = data_table_current
)

data_simulate_outcomes_19 <- PremPredict::simulate_outcomes(
  data_standings_simulations = data_simulate_standings_19,
  value_number_sims = number_simulations
)

data_simulate_games_76 <- PremPredict::simulate_games(
  data_model_parameters_unplayed = data_model_parameters_unplayed_76,
  value_number_sims = number_simulations,
  value_seed = 2602L
)

data_simulate_standings_76 <- PremPredict::simulate_standings(
  data_game_simulations = data_simulate_games_76,
  data_table_latest = data_table_current
)

data_simulate_outcomes_76 <- PremPredict::simulate_outcomes(
  data_standings_simulations = data_simulate_standings_76,
  value_number_sims = number_simulations
)

readr::write_csv(
  x = data_simulate_outcomes_19,
  file = "projections19.csv"
)

readr::write_csv(
  x = data_simulate_outcomes_76,
  file = "projections76.csv"
)

readr::write_csv(
  x = row_order_latest_data,
  file = "latest_game.csv"
)


# Rendering README ----

rmarkdown::render("README.Rmd")


# Saving log ----

data_log <- data.frame(
  value_date = date(),
  value_rows = nrow(data_simulate_outcomes_19) + nrow(data_simulate_outcomes_76)
)

write.table(
  x = data_log,
  sep = ",",
  file = "log.csv",
  row.names = FALSE,
  col.names = FALSE,
  append = TRUE
)
