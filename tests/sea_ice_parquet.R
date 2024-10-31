test = list(
  name = "sea_ice_parquet",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(
            "ice_extent_yearly.parquet" %in% list.files(),
            info = "FEEDBACK: ice_extent_yearly.parquet not found in this folder. Check list.files() to check for yourself."
        )
      }
    )
  )
)