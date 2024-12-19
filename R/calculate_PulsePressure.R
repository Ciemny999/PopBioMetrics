#' Calculate Pulse Pressure
#'
#' This function calculates the pulse pressure (SBP - DBP).
#'
#' @param sbp Numeric, systolic blood pressure (mmHg).
#' @param dbp Numeric, diastolic blood pressure (mmHg).
#' @return A numeric value representing the pulse pressure (mmHg).
#' @examples
#' calculate_PulsePressure(120, 80)
#' @export
calculate_PulsePressure <- function(sbp, dbp) {
  if (sbp <= 0 || dbp <= 0 || sbp <= dbp) {
    stop("SBP must be greater than DBP and both must be positive.")
  }
  return(sbp - dbp)
}
