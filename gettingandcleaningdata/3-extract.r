extract <- function(alldata){
    ## Source common variables
    source(paste0(c(getwd(), "0-vars.r"), collapse="/"))
    
    ## Get column indexes and names for std() and mean() measurements
    rows <- cpash$get_features()
    
    ## The V1 column contains the column index numbers
    field_idxs <- rows$V1
    
    ## We need to offset the indexes by 2 to account for subjectid and
    ## activityid added during the merge operations.
    field_idxs <- c(1, 2, sapply(field_idxs, function(x) x+2))

    ## Return data with only indexes we want
    subset(alldata, select=field_idxs)
}