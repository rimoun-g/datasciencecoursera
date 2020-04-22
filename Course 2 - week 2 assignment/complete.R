folder <- "E:\\AI Lab\\datasciencecoursera\\New folder\\specdata\\"

complete <- function(directory, id=1:332){
  files <- dir(directory,'*.csv')

  main_df <- data.frame()
  
  for (file in id) 
  {
    df <- read.csv(paste(directory,files[file],sep=""))
    main_df <- rbind(main_df, c(id = file, nobs = sum(complete.cases(df))))
  }
  colnames(main_df) <- c("id","nobs")
  main_df

}

cr <- corr(folder, 2000)                
n <- length(cr)                
cr <- corr(folder, 1000)                
cr <- sort(cr)
print(c(n, round(cr, 4)))