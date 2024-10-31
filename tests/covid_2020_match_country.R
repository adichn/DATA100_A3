test = list(
  name = "covid_2020_match_country",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 2,
      code = {
        covid_countries_new <- covid_2020_match_country |> pull(country) |> unique()
        aware_countries_new <- aware_pop |> pull(country) |> unique()

        testthat::expect_true(
            length(setdiff(aware_countries_new, covid_countries_new)) == 0,
            info = "FEEDBACK: All countries in covid_2020_match_country should exist in aware_pop."
        )
      }
    )
  )
)