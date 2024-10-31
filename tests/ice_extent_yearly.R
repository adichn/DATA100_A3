test = list(
  name = "ice_extent_yearly",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 3,
      code = {
        example_df <- as_tibble(data.frame(
            year = c(1978, 1978, 1978, 1978, 1979, 1979),
            region = c("Antarctic", "Antarctic", "Arctic", "Arctic",
                "Antarctic", "Antarctic"),
            name = c("min", "max", "min", "max", "min", "max"),
            value = c(7.283, 17.803, 10.231, 14.585, 2.911, 18.361)
        ))

        testthat::expect_equal(
            example_df,
            head(ice_extent_yearly),
            info = "FEEDBACK: Your submission does not match the example data frame given."
        )

      }
    )
  )
)