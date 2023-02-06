drawdown <- function(x){
  wealth_index <- 1000 * (cumprod(1+x))
  previous_peak <- cummax(wealth_index)
  drawdowns <- (wealth_index / previous_peak) - 1
  return(data.frame('Wealth' = wealth_index,
                    'Previous Peak' = previous_peak,
                    'Drawdown' = drawdowns))
  }
