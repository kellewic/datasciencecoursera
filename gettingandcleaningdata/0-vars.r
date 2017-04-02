##Let's not pollute the global environment
cpash <- new.env()

## Directory where the zip file is located
cpash$zipdir <- paste0(c(getwd(), "UCI HAR Dataset"), collapse="/")

## Function to get feature column indexes and names
cpash$get_features <- function(){
    ## Read in features file so we can get the columns that
    ## contain the std() and mean() measurements.
    featuresFile <- paste0(c(cpash$zipdir, "features.txt"), collapse="/")
    features <- read.table(featuresFile)
    
    ## Return rows that match the measurements we want. The V2 column
    ## has the column names in it.
    rows <- features[grep("-(mean|std)\\(\\)", features$V2), ]
}


## Clears out our environment
clear_cpash_env <- function(){
    rm(list=ls(cpash), envir=cpash)
}