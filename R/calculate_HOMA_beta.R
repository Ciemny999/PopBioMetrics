#' Calculate HOMA-Beta
#'
#' This function calculates the HOMA-Beta index to estimate beta-cell function.
#'
#' @param glucose Numeric, fasting glucose level (mg/dL).
#' @param insulin Numeric, fasting insulin level (uU/mL).
#' @return A numeric value representing the HOMA-Beta index.
#' @examples
#' calculate_HOMA_beta(90, 15)
#' @export
calculate_HOMA_beta <- function(glucose, insulin) {
  if (glucose <= 3.5 || insulin <= 0) {
    stop("Glucose must be > 3.5 mg/dL and insulin must be positive.")
  }
  return((20 * insulin) / (glucose - 3.5))
}

