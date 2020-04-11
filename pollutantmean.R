pollutantmean <- function(directory, pollutant, id = 1:332){
  dir <- paste(getwd(), "/", directory, "/", sep = "")
  files <- list.files(dir)
  
  dat <- NA
  
  for( i in id){
    dir_file <- paste(dir, files[i], sep = "")
    single_dat <- read.csv(dir_file)
    
    dat <- rbind(dat, single_dat)
    
  }
  
  mean(dat[[pollutant]], na.rm = TRUE)
}