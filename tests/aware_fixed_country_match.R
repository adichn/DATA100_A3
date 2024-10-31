test = list(
  name = "aware_fixed_country_match",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 3,
      code = {
        testthat::expect_equal(
            length(setdiff(aware_countries, pop_countries)),
            4,
            info = "FEEDBACK: There should only be 4 'countries' remaining."
        )

        testthat::expect_true(
            "Caribbean" %in% setdiff(aware_countries, pop_countries),
            info = "FEEDBACK: The Caribbean should be in aware_countries but not pop_data."
        )

        testthat::expect_equal(
            length(unique(aware_fixed_country_match$country)),
            110,
            info = "FEEDBACK: There should be 110 countries left in aware_fixed_country_match; something went wrong with your code."
        )
      }
    )
  )
)