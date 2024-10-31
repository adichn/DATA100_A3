test = list(
  name = "cyclones_data_update_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_equal(
            ncol(cyclones_data_update_2),
            31,
            info = "FEEDBACK: Incorrect number of columns. Only one new column should be added."
        )

        testthat::expect_equal(
            sort(class(cyclones_data_update_2$date)),
            c("POSIXct", "POSIXt"),
            info = "FEEDBACK: New column is not a datetime object."
        )
      }
    )
  )
)