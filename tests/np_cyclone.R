test = list(
  name = "np_cyclone",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2,
      code = {
        testthat::expect_true(
            exists("np_cyclone"),
            info = "FEEDBACK: np_cyclone not found. Perhaps there was an error in the pipeline."
        )

        testthat::expect_equal(
            ncol(np_cyclone),
            28,
            info = "FEEDBACK: Wrong number of columns."
        )

        testthat::expect_equal(
            nrow(np_cyclone),
            30625,
            info = "FEEDBACK: Wrong number of rows"
        )

        testthat::expect_true(
            all(c("Basin", "ObservYear", "Hour") %in% names(np_cyclone)),
            info = "FEEDBACK: 'Basin', 'ObservYear', and 'Hour' should be columns in np_cyclone."
        )

      }
    )
  )
)