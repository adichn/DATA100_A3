test = list(
  name = "cyclones_update_2",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2,
      code = {
        testthat::expect_true(
            "category" %in% names(cyclones_data),
            info = "FEEDBACK: category not found as a column."
        )

        testthat::expect_equal(
            class(cyclones_data$category),
            c("ordered", "factor"),
            info = "FEEDBACK: 'category' is not an ordered factor."
        )

        testthat::expect_equal(
            levels(cyclones_data$category),
            c("TD", "TS", "1", "2", "3", "4", "5"),
            info = "FEEDBACK: Categories are not correctly labelled (or possibly not correctly ordered)."
        )

      }
    )
  )
)