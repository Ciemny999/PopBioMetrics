#' Calculate Basal Metabolic Rate (BMR)
#'
#' This function calculates the Basal Metabolic Rate (BMR) using the Harris-Benedict formula.
#'
#' @param weight Numeric, weight in kilograms.
#' @param height Numeric, height in centimeters.
#' @param age Numeric, age in years.
#' @param sex Character, "male" or "female".
#' @return A numeric value representing the BMR.
#' @examples
#' calculate_BMR(70, 175, 25, "male")
#' @export
calculate_BMR <- function(weight, height, age, sex) {
  if (weight <= 0 || height <= 0 || age <= 0) {
    stop("Weight, height, and age must be positive values.")
  }
  if (sex == "male") {
    return(88.362 + (13.397 * weight) + (4.799 * height) - (5.677 * age))
  } else if (sex == "female") {
    return(447.593 + (9.247 * weight) + (3.098 * height) - (4.330 * age))
  } else {
    stop("Sex must be 'male' or 'female'.")
  }
}
