#' Calculate QUICKI Index
#'
#' This function calculates the QUICKI index (Quantitative Insulin Sensitivity Check Index).
#' It is used as an estimate of insulin sensitivity.
#'
#' @param glucose Numeric, fasting glucose level (mg/dL).
#' @param insulin Numeric, fasting insulin level (uU/mL).
#' @return A numeric value representing the QUICKI index.
#' @examples
#' calculate_QUICKI(90, 15)
#' @export
calculate_QUICKI <- function(glucose, insulin) {
  if (glucose <= 0 || insulin <= 0) {
    stop("Glucose and insulin levels must be positive values.")
  }
  return(1 / (log10(glucose) + log10(insulin)))
}
