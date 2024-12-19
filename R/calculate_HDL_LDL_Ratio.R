#' Calculate HDL to LDL Ratio
#'
#' This function calculates the ratio of HDL to LDL cholesterol.
#'
#' @param hdl Numeric, HDL cholesterol level (mg/dL).
#' @param ldl Numeric, LDL cholesterol level (mg/dL).
#' @return A numeric value representing the HDL to LDL ratio.
#' @examples
#' calculate_HDL_LDL_Ratio(50, 100)
#' @export
calculate_HDL_LDL_Ratio <- function(hdl, ldl) {
  if (hdl <= 0 || ldl <= 0) {
    stop("HDL and LDL must be positive values.")
  }
  return(hdl / ldl)
}
