#' Calculate Matsuda Index
#'
#' This function calculates the Matsuda Index to estimate insulin sensitivity.
#'
#' @param glucose_fasting Numeric, fasting glucose level (mg/dL).
#' @param glucose_120min Numeric, glucose level at 120 minutes (mg/dL).
#' @param insulin_fasting Numeric, fasting insulin level (uU/mL).
#' @param insulin_120min Numeric, insulin level at 120 minutes (uU/mL).
#' @return A numeric value representing the Matsuda Index.
#' @examples
#' calculate_MatsudaIndex(90, 140, 15, 50)
#' @export
calculate_MatsudaIndex <- function(glucose_fasting, glucose_120min, insulin_fasting, insulin_120min) {
  return(10000 / sqrt((glucose_fasting * glucose_120min) * (insulin_fasting * insulin_120min)))
}
