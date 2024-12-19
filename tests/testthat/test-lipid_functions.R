library(testthat)

test_that("calculate_LDL works correctly", {
  expect_equal(calculate_LDL(200, 50, 150), 120, tolerance = 1e-5)
  expect_error(calculate_LDL(-200, 50, 150), "All values must be positive.")
  expect_error(calculate_LDL(200, -50, 150), "All values must be positive.")
})


test_that("calculate_HDL_LDL_Ratio works correctly", {
  expect_equal(calculate_HDL_LDL_Ratio(50, 100), 0.5, tolerance = 1e-5)
  expect_error(calculate_HDL_LDL_Ratio(50, -100), "positive values")
  expect_error(calculate_HDL_LDL_Ratio(-50, 100), "positive values")
})

test_that("calculate_TG_HDL_Ratio works correctly", {
  expect_equal(calculate_TG_HDL_Ratio(150, 50), 3, tolerance = 1e-5)
  expect_error(calculate_TG_HDL_Ratio(-150, 50), "positive values")
  expect_error(calculate_TG_HDL_Ratio(150, -50), "positive values")
})

test_that("calculate_NonHDL works correctly", {
  expect_equal(calculate_NonHDL(200, 50), 150, tolerance = 1e-5)
  expect_error(calculate_NonHDL(-200, 50), "positive values")
  expect_error(calculate_NonHDL(200, -50), "positive values")
})

test_that("calculate_CardiacRiskRatio works correctly", {
  expect_equal(calculate_CardiacRiskRatio(200, 50), 4.0, tolerance = 1e-5)
  expect_error(calculate_CardiacRiskRatio(-200, 50), "positive values")
  expect_error(calculate_CardiacRiskRatio(200, -50), "positive values")
})

test_that("calculate_MAP works correctly", {
  expect_equal(calculate_MAP(120, 80), 93.3333, tolerance = 1e-4)
  expect_error(calculate_MAP(-120, 80), "positive values")
  expect_error(calculate_MAP(120, -80), "positive values")
})

test_that("calculate_PulsePressure works correctly", {
  expect_equal(calculate_PulsePressure(120, 80), 40, tolerance = 1e-5)
  expect_error(calculate_PulsePressure(120, 120), "SBP must be greater than DBP")
  expect_error(calculate_PulsePressure(120, -80), "SBP must be greater than DBP and both must be positive.")
})

