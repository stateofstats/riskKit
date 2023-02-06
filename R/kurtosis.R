#' Kurtosis
#'
#' @param x A vector of data on which you wish to calculate the kurtosis
#'
#' @return A single kurtosis value
#' @export
#'
#' @examples
#' x <- df$values
#' kurtosis(x)
#'
kurtosis <- function(x){

  demeaned_x <- x - mean(x)
  sigma_x <- sd(x)
  exp <- mean((demeaned_x ** 4))
  return(exp/sigma_x**4)
}
