complete <- function(directory, id = 1:332) {
  files_list <- list.files(directory, full.names = TRUE) 
  
  nobs <- numeric() #- initialize the nobs vector
  #nrow(na.omit(dat)) - use na.omit to keep only data without na
  for(i in id) {
    nobs <- c(nobs, nrow(na.omit(read.csv(files_list[i]))))
  }
  report <- data.frame("id" = id, "nobs" = nobs) #initialize final data frame eg. id and nobs
  #head(report) - data frame check
  #nobs - vector check
  report
  
}