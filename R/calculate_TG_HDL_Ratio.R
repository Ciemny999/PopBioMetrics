#' Calculate Triglyceride to HDL Ratio
#'
#' This function calculates the ratio of triglycerides to HDL cholesterol.
#'
#' @param triglycerides Numeric, triglyceride level (mg/dL).
#' @param hdl Numeric, HDL cholesterol level (mg/dL).
#' @return A numeric value representing the triglyceride to HDL ratio.
#' @examples
#' calculate_TG_HDL_Ratio(150, 50)
#' @export
calculate_TG_HDL_Ratio <- function(triglycerides, hdl) {
  if (triglycerides <= 0 || hdl <= 0) {
    stop("Triglycerides and HDL must be positive values.")
  }
  return(triglycerides / hdl)
}
