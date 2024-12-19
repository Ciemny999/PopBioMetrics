#' Calculate Body Fat Percentage
#'
#' This function calculates the body fat percentage using the Deurenberg formula.
#'
#' @param bmi Numeric, Body Mass Index.
#' @param age Numeric, age in years.
#' @param sex Character, "male" or "female".
#' @return A numeric value representing the body fat percentage.
#' @examples
#' calculate_BodyFatPercentage(22, 25, "male")
#' @export
calculate_BodyFatPercentage <- function(bmi, age, sex) {
  if (bmi <= 0 || age <= 0) {
    stop("BMI and age must be positive values.")
  }
  if (sex == "male") {
    return(1.2 * bmi + 0.23 * age - 16.2)
  } else if (sex == "female") {
    return(1.2 * bmi + 0.23 * age - 5.4)
  } else {
    stop("Sex must be 'male' or 'female'.")
  }
}
