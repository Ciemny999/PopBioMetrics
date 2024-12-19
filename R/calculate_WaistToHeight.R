#' Calculate Waist-to-Height Ratio (WHtR)
#'
#' This function calculates the Waist-to-Height Ratio.
#'
#' @param waist Numeric, waist circumference in centimeters.
#' @param height Numeric, height in centimeters.
#' @return A numeric value representing the WHtR.
#' @examples
#' calculate_WaistToHeight(80, 175)
#' @export
calculate_WaistToHeight <- function(waist, height) {
  if (waist <= 0 || height <= 0) {
    stop("Waist circumference and height must be positive values.")
  }
  return(waist / height)
}
