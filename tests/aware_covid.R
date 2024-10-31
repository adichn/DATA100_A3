test = list(
  name = "aware_covid",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2,
      code = {
        testthat::expect_equal(
            ncol(aware_covid),
            10,
            info = "FEEDBACK: Incorrect number of columns. Did you add cases_per_capita?"
        )

        testthat::expect_equal(
            nrow(aware_covid),
            106,
            info = "FEEDBACK: Incorrect number of rows. Did you do an 'inner' join?"
        )

      }
    )
  )
)