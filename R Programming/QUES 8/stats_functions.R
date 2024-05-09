# function to calculate mean
mean_calculation <- function(data){
  mean(data)
}

# function to calculate median
median_calculation <- function(data){
  median(data)
}

# function to calculate mode
mode_calculation <- function(data){
  uniq <- unique(data)
  uniq[which.max(tabulate(match(data, uniq)))]
}

# function to calculate variance
variance_calculation <- function(data){
  var(data)
}

# function to calculate standard deviation
sd_calculation <- function(data){
  sd(data)
}
