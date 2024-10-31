test = list(
  name = "aware_fixed_country",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(
            "Trinidad and Tobago" %in% aware_fixed_country$country,
            info = "FEEDBACK: 'Trinidad and Tobago' not found - did you replace *all* instances?"
        )
      }
    )
  )
)