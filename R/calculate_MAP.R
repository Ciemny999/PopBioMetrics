#' Calculate Mean Arterial Pressure (MAP)
#'
#' This function calculates the Mean Arterial Pressure (MAP).
#'
#' @param sbp Numeric, systolic blood pressure (mmHg).
#' @param dbp Numeric, diastolic blood pressure (mmHg).
#' @return A numeric value representing the Mean Arterial Pressure (MAP).
#' @examples
#' calculate_MAP(120, 80)
#' @export
calculate_MAP <- function(sbp, dbp) {
  if (sbp <= 0 || dbp <= 0) {
    stop("Systolic and diastolic blood pressures must be positive values.")
  }
  return((2 * dbp + sbp) / 3)
}
