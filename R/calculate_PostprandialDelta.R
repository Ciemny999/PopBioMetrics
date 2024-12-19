#' Calculate Postprandial Delta
#'
#' This function calculates the difference between fasting and postprandial glucose levels.
#'
#' @param glucose_fasting Numeric, fasting glucose level (mg/dL).
#' @param glucose_postprandial Numeric, postprandial glucose level (mg/dL).
#' @return A numeric value representing the difference in glucose levels.
#' @examples
#' calculate_PostprandialDelta(90, 140)
#' @export
calculate_PostprandialDelta <- function(glucose_fasting, glucose_postprandial) {
  return(glucose_postprandial - glucose_fasting)
}
