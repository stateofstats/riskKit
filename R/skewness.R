skewness <- function(x){

  demeaned_x <- x - mean(x)
  sigma_x <- sd(x)
  exp <- mean((demeaned_x ** 3))
  return(exp/sigma_x**3)
}
