test = list(
  name = "covid_2020_parquet",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(
            "covid_2020.parquet" %in% list.files(),
            info = "FEEDBACK: covid_2020.parquet not found in this folder. Check list.files() to check for yourself."
        )
      }
    )
  )
)