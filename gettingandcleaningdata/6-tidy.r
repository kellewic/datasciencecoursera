tidy <- function(alldata){
    ## Get the mean of each measurement variable for each activity and each subject
    aggregate(
        ## We want mean() on all measurements so we exclude subjectid and activity
        alldata[, -(1:2)],
        ## Group by subjectid and activity and keep column names
        list(subjectid = alldata$subjectid, activity = alldata$activity),
        ## Apply this function to each column
        mean
    )
}