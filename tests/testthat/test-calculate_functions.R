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



test_that("calculate_HOMA_beta works correctly", {
  # Poprawny wynik dla glukozy = 90 i insuliny = 15
  expect_equal(calculate_HOMA_beta(90, 15), 3.47, tolerance = 1e-2)

  # Błędy dla niepoprawnych danych wejściowych
  expect_error(calculate_HOMA_beta(3.5, 15), "Glucose must be > 3.5")
  expect_error(calculate_HOMA_beta(90, -15), "positive")
})



test_that("calculate_MatsudaIndex works correctly", {
  expect_equal(calculate_MatsudaIndex(90, 140, 15, 50), 3.253, tolerance = 1e-3)
})

test_that("calculate_InsulinogenicIndex works correctly", {
  # Poprawny przypadek
  expect_equal(calculate_InsulinogenicIndex(50, 15, 130, 90), 0.875, tolerance = 1e-5)

  # Sprawdzenie błędu, gdy glucose_30min == glucose_fasting
  expect_error(calculate_InsulinogenicIndex(50, 15, 90, 90),
               "Glucose levels at 30 minutes and fasting cannot be the same.")
})


test_that("calculate_PostprandialDelta works correctly", {
  expect_equal(calculate_PostprandialDelta(90, 140), 50)
  expect_equal(calculate_PostprandialDelta(100, 80), -20)
})

test_that("calculate_GlucoseVariability works correctly", {
  glucose_levels <- c(90, 95, 100, 85, 110)
  expect_equal(calculate_GlucoseVariability(glucose_levels), sd(glucose_levels), tolerance = 1e-5)
})

test_that("calculate_AUC_Glucose works correctly", {
  time <- c(0, 30, 60, 120)
  glucose <- c(90, 140, 120, 100)
  expected_auc <- sum(c(30, 30, 60) * (c(90, 140, 120) + c(140, 120, 100)) / 2)
  expect_equal(calculate_AUC_Glucose(time, glucose), expected_auc, tolerance = 1e-5)
})
