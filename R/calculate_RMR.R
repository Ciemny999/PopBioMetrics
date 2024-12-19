#' Calculate Resting Metabolic Rate (RMR)
#'
#' This function calculates the Resting Metabolic Rate (RMR).
#'
#' @param weight Numeric, weight in kilograms.
#' @param height Numeric, height in centimeters.
#' @param age Numeric, age in years.
#' @param sex Character, "male" or "female".
#' @return A numeric value representing the RMR.
#' @examples
#' calculate_RMR(70, 175, 25, "male")
#' @export
calculate_RMR <- function(weight, height, age, sex) {
  if (weight <= 0 || height <= 0 || age <= 0) {
    stop("Weight, height, and age must be positive values.")
  }
  if (sex == "male") {
    return(66 + (13.75 * weight) + (5.003 * height) - (6.75 * age))
  } else if (sex == "female") {
    return(655 + (9.563 * weight) + (1.850 * height) - (4.676 * age))
  } else {
    stop("Sex must be 'male' or 'female'.")
  }
}
