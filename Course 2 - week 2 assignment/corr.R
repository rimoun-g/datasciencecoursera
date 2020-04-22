folder <- "E:\\AI Lab\\datasciencecoursera\\New folder\\specdata\\"

corr <- function(directory, threshold =0)
  {
  files <- dir(directory,'*.csv')
  
  corrs <- c()
  
  for (file in files) 
  {
    df <- read.csv(paste(directory,file,sep=""))
    
  
    if (sum(complete.cases(df)) > threshold)
    {
      new_df <- df[complete.cases(df),]
      val <- cor(new_df['sulfate'],new_df['nitrate'])[1]
      corrs <- c(corrs, val)
    }
  }
 
  corrs
}

corr(folder,400)


