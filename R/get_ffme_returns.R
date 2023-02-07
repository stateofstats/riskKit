

#' Get FFME Return Series
#'
#' @return a dataframe of FFME monthly returns
#' @export
#'
#' @examples
get_ffme_returns <- function(){
  require(tidyverse)
  ffme <- read_csv(file.choose(),
                   na = c("-99.99", "NA"))
  names(ffme)[1] <- 'month'

  names(ffme) <- make.names(names(ffme))

  return(cbind(ffme[, 1:2], ffme[, -c(1:2)]/100))
}
