#' Calculate Non-HDL Cholesterol
#'
#' This function calculates Non-HDL cholesterol.
#'
#' @param total_cholesterol Numeric, total cholesterol level (mg/dL).
#' @param hdl Numeric, HDL cholesterol level (mg/dL).
#' @return A numeric value representing Non-HDL cholesterol (mg/dL).
#' @examples
#' calculate_NonHDL(200, 50)
#' @export
calculate_NonHDL <- function(total_cholesterol, hdl) {
  if (total_cholesterol <= 0 || hdl <= 0) {
    stop("Total cholesterol and HDL must be positive values.")
  }
  return(total_cholesterol - hdl)
}
