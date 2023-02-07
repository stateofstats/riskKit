#' Title
#'
#' @param x A series of asset returns
#' @param periods The number of periods in a year
#'
#' @return The compounded annualized return for a return series
#' @export
#'
#' @examples
annualize_returns <- function(x, periods){
  compounded_growth <- prod(1 + x)
  n_periods <- nrow(x)
  return(compounded_growth ** (periods / n_periods) - 1)
}
