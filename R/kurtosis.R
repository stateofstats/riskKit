kurtosis <- function(x){

  demeaned_x <- x - mean(x)
  sigma_x <- sd(x)
  exp <- mean((demeaned_x ** 4))
  return(exp/sigma_x**4)
}
