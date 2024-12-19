#' Calculate Insulinogenic Index
#'
#' This function calculates the insulinogenic index, measuring early-phase insulin response.
#'
#' @param insulin_30min Numeric, insulin level at 30 minutes (uU/mL).
#' @param insulin_fasting Numeric, fasting insulin level (uU/mL).
#' @param glucose_30min Numeric, glucose level at 30 minutes (mg/dL).
#' @param glucose_fasting Numeric, fasting glucose level (mg/dL).
#' @return A numeric value representing the insulinogenic index.
#' @examples
#' calculate_InsulinogenicIndex(50, 15, 130, 90)
#' @export
calculate_InsulinogenicIndex <- function(insulin_30min, insulin_fasting, glucose_30min, glucose_fasting) {
  if (glucose_30min == glucose_fasting) {
    stop("Glucose levels at 30 minutes and fasting cannot be the same.")
  }
  return((insulin_30min - insulin_fasting) / (glucose_30min - glucose_fasting))
}
