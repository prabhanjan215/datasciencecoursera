corr <- function(directory, threshold = 0) {
  files_list <- list.files(directory, full.names = TRUE)
  
  corrvect <- numeric()
  for(i in 1:332) {
    if(nrow(na.omit(read.csv(files_list[i]))) >= threshold) {
      templist <- na.omit(read.csv(files_list[i]))
      corrvect <- c(corrvect, cor(templist$nitrate, templist$sulfate))
    }
    else {
      next
    }
  }
  na.omit(corrvect)
  
}