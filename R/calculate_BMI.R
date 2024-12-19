#' Calculate BMI
#'
#' This function calculates the Body Mass Index (BMI).
#'
#' @param weight Numeric, weight in kilograms.
#' @param height Numeric, height in meters.
#' @return A numeric value representing the BMI.
#' @examples
#' calculate_BMI(70, 1.75)
#' @export
calculate_BMI <- function(weight, height) {
  if (weight <= 0 || height <= 0) {
    stop("Weight and height must be positive values.")
  }
  return(weight / (height^2))
}
