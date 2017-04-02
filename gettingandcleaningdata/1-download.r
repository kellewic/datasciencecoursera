## Download zip file from the Internet if needed
downloadZipFile <- function(){
    ## Source common variables
    source(paste0(c(getwd(), "0-vars.r"), collapse="/"))
    
    url <- "https://d396qusza40orc.cloudfront.net/getdata/projectfiles/UCI%20HAR%20Dataset.zip"
    zipfile <- paste0(c(getwd(), "UCI HAR Dataset.zip"), collapse="/")
    zipdir <- cpash$zipdir
    
    if (!dir.exists(zipdir)){
        if (!file.exists(zipfile)){
            download.file(url, zipfile)
        }
        
        unzip(zipfile, overwrite=TRUE)
    }
}
