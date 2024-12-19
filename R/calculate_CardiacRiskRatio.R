#' Calculate Cardiac Risk Ratio
#'
#' This function calculates the cardiac risk ratio (Total Cholesterol / HDL).
#'
#' @param total_cholesterol Numeric, total cholesterol level (mg/dL).
#' @param hdl Numeric, HDL cholesterol level (mg/dL).
#' @return A numeric value representing the cardiac risk ratio.
#' @examples
#' calculate_CardiacRiskRatio(200, 50)
#' @export
calculate_CardiacRiskRatio <- function(total_cholesterol, hdl) {
  if (total_cholesterol <= 0 || hdl <= 0) {
    stop("Total cholesterol and HDL must be positive values.")
  }
  return(total_cholesterol / hdl)
}
