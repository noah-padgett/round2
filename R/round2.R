#' A better formatted rounding function.
#'
#' @param x Numeric vector to be rounded.
#' @param digits Number of digits to print.
#' @param type A character (defaults to "f" for 'fixed-point precision')
#'    designating the scale and precision for the printed out character.
#'    See \code{\link{sprintf}} for more details.
#' @param ... Other arguments passed to \code{\link{sprintf}}
#' @return A character vector.
#' @export
#'
#' @examples
#' x <- c(1.023, 1.300, 1.45)
#' round2(x)
#' round2(x, digits=3)
#' round2(x, digits=3, type = "e")
round2 <- function(x, digits = 2, type = "f", ...) {
  sapply(x, function(val) {
    sprintf(paste0("%.", digits, type), val,...)
  }, USE.NAMES = FALSE)
}
