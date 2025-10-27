# Introduction ---- 
# A tidier and shorter replica of David Firth's model

# Data ----

number_sims <- 100000

data("teams")
data("schedule_thisSeason")

data_results_thisSeason <- get_footballData(
  value_link = "https://www.football-data.co.uk/mmz4281/2526/E0.csv", 
  table_schedule = schedule_thisSeason, 
  table_teams = teams, 
  value_yearEnd = 2026L
  )

results_combined <- get_results(
  results_thisSeason = data_results_thisSeason, 
  seasons = 1L
)

game_latest <- calc_game_latest(results = results_combined)

results_filtered_19 <- get_results_filtered(
  results = results_combined, 
  index_game_latest = game_latest, 
  lookback_rounds = 19L
)

results_filtered_76 <- get_results_filtered(
  results = results_combined, 
  index_game_latest = game_latest, 
  lookback_rounds = 76L
)

data_table_current <- data_results_thisSeason |> 
  calc_table_current()

data_model_19 <- results_filtered_19 |> 
  model_prepare_frame() |>
  model_run()

data_model_76 <- results_filtered_76 |> 
  model_prepare_frame() |>
  model_run()

data_parameters_unplayed_19 <- data_model_19 |> 
  model_extract_parameters()

data_model_parameters_unplayed_19 <- model_parameters_unplayed(
  results = results_filtered_19,
  model_parameters = data_parameters_unplayed_19
)

data_parameters_unplayed_76 <- data_model_76 |> 
  model_extract_parameters()

data_model_parameters_unplayed_76 <- model_parameters_unplayed(
  results = results_filtered_76,
  model_parameters = data_parameters_unplayed_76
)

data_simulate_games_19 <- simulate_games(
  data_model_parameters_unplayed = data_model_parameters_unplayed_19,
  value_number_sims = number_simulations,
  value_seed = 2602L
)

data_simulate_standings_19 <- simulate_standings(
  data_game_simulations = data_simulate_games_19,
  data_table_latest = data_table_current
)

data_simulate_outcomes_19 <- simulate_outcomes(
  data_standings_simulations = data_simulate_standings_19,
  value_number_sims = number_simulations
)

data_simulate_games_76 <- simulate_games(
  data_model_parameters_unplayed = data_model_parameters_unplayed_76,
  value_number_sims = number_simulations,
  value_seed = 2602L
)

data_simulate_standings_76 <- simulate_standings(
  data_game_simulations = data_simulate_games_76,
  data_table_latest = data_table_current
)

data_simulate_outcomes_76 <- simulate_outcomes(
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