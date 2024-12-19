#' Calculate HOMA-IR Index
#'
#' This function calculates the HOMA-IR index (Homeostatic Model Assessment of Insulin Resistance).
#' It is used to estimate insulin resistance.
#'
#' @param glucose Numeric, fasting glucose level (mg/dL).
#' @param insulin Numeric, fasting insulin level (uU/mL).
#' @return A numeric value representing the HOMA-IR index.
#' @examples
#' calculate_HOMA(90, 15)
#' @export
calculate_HOMA <- function(glucose, insulin) {
  if (glucose <= 0 || insulin <= 0) {
    stop("Glucose and insulin levels must be positive values.")
  }
  return((glucose * insulin) / 405)
}
