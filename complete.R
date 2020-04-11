complete <- function(directory, id = 1: 332){
  
  dir <- paste(getwd(), "/", directory, "/", sep = "")
  files <- list.files(dir)
  
  dat <- vector()
  ids <- vector()
  
  for( i in id){
    dir_file <- paste(dir, files[i], sep = "")
    single_dat <- read.csv(dir_file)
    
    ids <- c(ids, i)
    dat <- c(dat, sum(complete.cases(single_dat)))
    
  }
  
  data.frame(id = ids, nobs = dat)
  
}