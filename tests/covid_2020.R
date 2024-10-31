test = list(
  name = "covid_2020",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2,
      code = {
        testthat::expect_true(
            ncol(covid_2020) == 3,
            info = "FEEDBACK: Result should only have 3 columns."
        )

        testthat::expect_equal(
            sort(colnames(covid_2020)),
            sort(c("country", "continent", "total_cases")),
            info = "FEEDBACK: Incorrect columns."
        )
      }
    )
  )
)