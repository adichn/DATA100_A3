test = list(
  name = "write_cyclones",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1,
      code = {
        testthat::expect_true(
            file.exists("cyclones_data.parquet"),
            info = "FEEDBACK: file cyclones_data.parquet not found."
        )
      }
    )
  )
)