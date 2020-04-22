folder <- "E:\\AI Lab\\datasciencecoursera\\New folder\\specdata\\"

pollutantmean <- function(directory, pollutant, id=1:332){
  files <- dir(directory,'*.csv')
  average <- 0
  main_df <- NULL
  
  for (file in id) 
  {
    df <- read.csv(paste(directory,files[file],sep=""))
    main_df <- rbind(df,main_df)
  }
  
  co_avg = lapply(main_df[pollutant], mean, na.rm = TRUE)
  co_avg[[pollutant]]
}

round(pollutantmean(folder,"nitrate"),3)





