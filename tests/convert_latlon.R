test = list(
  name = "convert_latlon",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2,
      code = {
        test_data <- c("49W", "49.99W", "49E", "49.99E", "49N", "49.99S", "-0.0W")
        testthat::expect_equal(
            convert_latlon(test_data),
            c(-49, -49.99, 49, 49.99, 49, -49.99, 0),
            info = "FEEDBACK: The visible test case did not pass."
        )

        testthat::expect_true(
            is.numeric(convert_latlon(cyclones_data_update_1$latitude)),
            info = "FEEDBACK: Function does not return numbers."
        )
        testthat::expect_true(
            is.numeric(convert_latlon(cyclones_data_update_1$longitude)),
            info = "FEEDBACK: Function does not return numbers."
        )
        testthat::expect_true(
            !any(is.na(convert_latlon(cyclones_data_update_1$latitude))),
            info = "FEEDBACK: NA values were detected."
        )
        testthat::expect_true(
            !any(is.na(convert_latlon(cyclones_data_update_1$longitude))),
            info = "FEEDBACK: NA values were detected."
        )
      }
    )
  )
)