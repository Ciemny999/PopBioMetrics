library(testthat)

test_that("calculate_HOMA works correctly", {
  expect_equal(calculate_HOMA(90, 15), 3.333333, tolerance = 1e-5)
  expect_error(calculate_HOMA(-90, 15), "positive values")
})

test_that("calculate_QUICKI works correctly", {
  expect_equal(calculate_QUICKI(90, 15), 0.32, tolerance = 1e-2)
  expect_error(calculate_QUICKI(-90, 15), "positive values")
})






test_that("calculate_BMI works correctly", {
  expect_equal(calculate_BMI(70, 1.75), 22.85714, tolerance = 1e-5)
  expect_error(calculate_BMI(70, -1.75), "positive values")
})

