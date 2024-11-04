test = list(
  name = "at_cyclone",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 3,
      code = {
        testthat::expect_true(
            exists("at_cyclone"),
            info = "FEEDBACK: at_cyclone not found. Perhaps there was an error in the pipeline."
        )

        testthat::expect_equal(
            ncol(at_cyclone),
            28,
            info = "FEEDBACK: Wrong number of columns."
        )

        testthat::expect_equal(
            nrow(at_cyclone),
            53976,
            info = "FEEDBACK: Wrong number of rows"
        )

        testthat::expect_true(
            all(c("Basin", "ObservYear", "Hour") %in% names(at_cyclone)),
            info = "FEEDBACK: 'Basin', 'ObservYear', and 'Hour' should be columns in at_cyclone."
        )

      }
    )
  )
)