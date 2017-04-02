label <- function(alldata){
    ## Source common variables
    source(paste0(c(getwd(), "0-vars.r"), collapse="/"))
    
    ## Get column indexes and names for std() and mean() measurements
    rows <- cpash$get_features()
    
    ## Rename generic column names to "meanOf-" + original measurement
    ## name. We use the original names so we can more easily match 
    ## them back to the original data.
    names(alldata)[3:68] <- sapply(rows$V2, function(x) paste0("meanOf-", x))
    
    alldata
}