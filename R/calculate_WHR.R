#' Calculate Waist-to-Hip Ratio (WHR)
#'
#' This function calculates the Waist-to-Hip Ratio.
#'
#' @param waist Numeric, waist circumference in centimeters.
#' @param hip Numeric, hip circumference in centimeters.
#' @return A numeric value representing the WHR.
#' @examples
#' calculate_WHR(80, 100)
#' @export
calculate_WHR <- function(waist, hip) {
  if (waist <= 0 || hip <= 0) {
    stop("Waist and hip circumferences must be positive values.")
  }
  return(waist / hip)
}
