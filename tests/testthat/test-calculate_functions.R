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

  expect_equal(calculate_HOMA_beta(90, 15), 3.47, tolerance = 1e-2)


  expect_error(calculate_HOMA_beta(3.5, 15), "Glucose must be > 3.5")
  expect_error(calculate_HOMA_beta(90, -15), "positive")
})

test_that("calculate_MatsudaIndex works correctly", {
  expect_equal(calculate_MatsudaIndex(90, 140, 15, 50), 3.253, tolerance = 1e-3)
})

test_that("calculate_InsulinogenicIndex works correctly", {

  expect_equal(calculate_InsulinogenicIndex(50, 15, 130, 90), 0.875, tolerance = 1e-5)

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

library(testthat)

test_that("calculate_BMR works correctly", {
  expect_equal(calculate_BMR(70, 175, 25, "male"), 1676.5, tolerance = 1e-1)
  expect_equal(calculate_BMR(60, 160, 30, "female"), 1351.5, tolerance = 1e-1)
  expect_error(calculate_BMR(-70, 175, 25, "male"), "positive values")
  expect_error(calculate_BMR(70, 175, 25, "other"), "Sex must be 'male' or 'female'")
})

test_that("calculate_RMR works correctly", {
  expect_equal(calculate_RMR(70, 175, 25, "male"), 1706.75, tolerance = 1e-1)
  expect_equal(calculate_RMR(60, 160, 30, "female"), 1339.34, tolerance = 1e-1)
  expect_error(calculate_RMR(-70, 175, 25, "male"), "positive values")
  expect_error(calculate_RMR(70, 175, 25, "other"), "Sex must be 'male' or 'female'")
})

test_that("calculate_WHR works correctly", {
  expect_equal(calculate_WHR(80, 100), 0.8)
  expect_equal(calculate_WHR(90, 100), 0.9)
  expect_error(calculate_WHR(-80, 100), "positive values")
})

test_that("calculate_WaistToHeight works correctly", {
  expect_equal(calculate_WaistToHeight(80, 175), 0.4571, tolerance = 1e-4)
  expect_equal(calculate_WaistToHeight(90, 180), 0.5, tolerance = 1e-4)
  expect_error(calculate_WaistToHeight(-80, 175), "positive values")
})

test_that("calculate_BodyFatPercentage works correctly", {
  expect_equal(calculate_BodyFatPercentage(22, 25, "male"), 15.8, tolerance = 1e-1)
  expect_equal(calculate_BodyFatPercentage(22, 25, "female"), 26.6, tolerance = 1e-1)
  expect_error(calculate_BodyFatPercentage(-22, 25, "male"), "positive values")
  expect_error(calculate_BodyFatPercentage(22, 25, "other"), "Sex must be 'male' or 'female'")
})

test_that("calculate_LeanBodyMass works correctly", {
  expect_equal(calculate_LeanBodyMass(70, 175, "male"), 55.0, tolerance = 1e-1)
  expect_equal(calculate_LeanBodyMass(60, 160, "female"), 42.2, tolerance = 1e-1)
  expect_error(calculate_LeanBodyMass(-70, 175, "male"), "positive values")
  expect_error(calculate_LeanBodyMass(70, 175, "other"), "Sex must be 'male' or 'female'")
})

