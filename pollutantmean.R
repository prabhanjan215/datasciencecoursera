pollutantmean <- function(directory, pollutant, id = 1:332) { #directory is probably "specdata"
  files_list <- list.files(directory, full.names = TRUE) #create a list of files in the directory, keeping                                                             their name
  dat = data.frame() #initialize the data frame
  for (i in id) {
    dat <- rbind(dat, read.csv(files_list[i]))
  }
  dat_subset <- subset(dat, ID %in% id, select = pollutant)
  #mean(dat_subset) --- mean NOT work on data frames - use colMeans as is below
  #dat_subset[1100, ] -- not sure why this is here
  #class(dat_subset) --- double checking to make sure class was set correctly
  colMeans(dat_subset, na.rm = TRUE)
}