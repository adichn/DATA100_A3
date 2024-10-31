test = list(
  name = "cyclones_data_update_1",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_equal(
            ncol(cyclones_data_update_0),
            28,
            info = "FEEDBACK: Incorrect number of columns. Just use bind_rows()."
        )
        testthat::expect_equal(
            nrow(cyclones_data_update_0),
            84601,
            info = "FEEDBACK: Incorrect number of rows. Just use bind_rows()."
        )
      }
    )
  )
)