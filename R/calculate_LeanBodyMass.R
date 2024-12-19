#' Calculate Lean Body Mass (LBM)
#'
#' This function calculates the Lean Body Mass (LBM) using Boer’s formula.
#'
#' @param weight Numeric, weight in kilograms.
#' @param height Numeric, height in centimeters.
#' @param sex Character, "male" or "female".
#' @return A numeric value representing the Lean Body Mass (LBM).
#' @examples
#' calculate_LeanBodyMass(70, 175, "male")
#' @export
calculate_LeanBodyMass <- function(weight, height, sex) {
  if (weight <= 0 || height <= 0) {
    stop("Weight and height must be positive values.")
  }
  if (sex == "male") {
    return(0.407 * weight + 0.267 * height - 19.2)
  } else if (sex == "female") {
    return(0.252 * weight + 0.473 * height - 48.3)
  } else {
    stop("Sex must be 'male' or 'female'.")
  }
}
