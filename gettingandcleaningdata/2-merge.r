## Merge training and data set files
mergeData <- function(){
    ## Source common variables
    source(paste0(c(getwd(), "0-vars.r"), collapse="/"))
    zipdir <- cpash$zipdir
    
    ## Define paths for training and test data sets
    traindata_paths <- paste(zipdir, "train", c("subject_train.txt", "y_train.txt", "X_train.txt"), sep="/")
    testdata_paths <- paste(zipdir, "test", c("subject_test.txt", "y_test.txt", "X_test.txt"), sep="/")
    
    ## Column-wise merge of training and test data sets
    traindata <- do.call("cbind", lapply(traindata_paths, read.table))
    testdata <- do.call("cbind", lapply(testdata_paths, read.table))
    
    ## Row-wise merge of training and test data sets
    alldata <- rbind(traindata, testdata)
    
    alldata
}