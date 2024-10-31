test = list(
  name = "aware_pop",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 3,
      code = {
        testthat::expect_equal(
            sort(names(aware_pop)),
            sort(c("country", "total_population", "aware_no", "aware_alittle", "aware_moderate", "aware_alot", "aware_refuse")),
            info = "FEEDBACK: Incorrect column names."
        )

        testthat::expect_true(
            !"aware_base" %in% names(aware_pop),
            info = "FEEDBACK: You did not need to include aware_base."
        )

      }
    )
  )
)