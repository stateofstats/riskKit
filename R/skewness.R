#' Skewness
#'
#' @param x A vector of data on which you wish to calculate the skewness
#'
#' @return A single skewness value
#' @export
#'
#' @examples
#' x <- df$values
#' skewness(x)
#'
skewness <- function(x){

  demeaned_x <- x - mean(x)
  sigma_x <- sd(x)
  exp <- mean((demeaned_x ** 3))
  return(exp/sigma_x**3)
}
