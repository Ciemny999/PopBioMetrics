#' Calculate AUC for Glucose
#'
#' This function calculates the area under the curve (AUC) for glucose levels using the trapezoidal rule.
#'
#' @param time Numeric vector of time points.
#' @param glucose Numeric vector of glucose levels (mg/dL) corresponding to the time points.
#' @return A numeric value representing the AUC.
#' @examples
#' calculate_AUC_Glucose(c(0, 30, 60, 120), c(90, 140, 120, 100))
#' @export
calculate_AUC_Glucose <- function(time, glucose) {
  return(sum(diff(time) * (glucose[-1] + glucose[-length(glucose)]) / 2))
}
