#' Calculate LDL Cholesterol
#'
#' This function calculates LDL cholesterol using the Friedewald formula.
#'
#' @param total_cholesterol Numeric, total cholesterol level (mg/dL).
#' @param hdl Numeric, HDL cholesterol level (mg/dL).
#' @param triglycerides Numeric, triglyceride level (mg/dL).
#' @return A numeric value representing LDL cholesterol (mg/dL).
#' @examples
#' calculate_LDL(200, 50, 150)
#' @export
calculate_LDL <- function(total_cholesterol, hdl, triglycerides) {
  if (total_cholesterol <= 0 || hdl <= 0 || triglycerides <= 0) {
    stop("All values must be positive.")
  }
  return(total_cholesterol - hdl - (triglycerides / 5))
}
