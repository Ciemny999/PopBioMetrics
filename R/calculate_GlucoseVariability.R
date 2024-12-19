#' Calculate Glucose Variability
#'
#' This function calculates the standard deviation of glucose levels.
#'
#' @param glucose_vector Numeric vector of glucose levels (mg/dL).
#' @return A numeric value representing the standard deviation of glucose.
#' @examples
#' calculate_GlucoseVariability(c(90, 95, 100, 85, 110))
#' @export
calculate_GlucoseVariability <- function(glucose_vector) {
  return(sd(glucose_vector, na.rm = TRUE))
}
