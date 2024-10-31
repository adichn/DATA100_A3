test = list(
  name = "happiness",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 3,
      code = {
        testthat::expect_equal(
            happiness$year[
                happiness$country %in% c("Angola", "Belarus", "Canada", "Djibouti")
            ],
            c(2014, 2019, 2023, 2011),
            info = "FEEDBACK: I checked a small subset of countries and found a mismatch. You don't appear to have found the most recent year."
        )

        testthat::expect_equal(
            happiness$life_ladder[
                happiness$country %in% c("Angola", "Belarus", "Canada", "Djibouti")
            ],
            c(3.794837951660156250000, 5.821453094482421875000, 6.841206550598144531250, 4.369193553924560546875),
            info = "FEEDBACK: I checked a small subset of countries and found a mismatch. The values in life_ladder don't appear to match those in the most recent year."
        )

      }
    )
  )
)