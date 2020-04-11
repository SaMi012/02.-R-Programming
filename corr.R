corr <- function(directory, threshold = 0) {
  
  files <- list.files(path = directory)
  
  cors <- c()
  
  for(i in 1:length(files)){
    
    single_dat <- read.csv(paste(directory, "/", files[i], sep=""))
    
    single_dat <- subset(single_dat, complete.cases(single_dat))
    if(nrow(single_dat) > threshold){
      cors <- c(cors, cor(single_dat$sulfate, single_dat$nitrate))
    }

  }
  cors
}