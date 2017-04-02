activities <- function(alldata){
    ## Source common variables
    source(paste0(c(getwd(), "0-vars.r"), collapse="/"))
    zipdir <- cpash$zipdir
    
    activityFile <- paste0(c(zipdir, "activity_labels.txt"), collapse="/")
    
    ## Rename columns so we can merge in the activity strings instead
    ## of using the activity ID numbers.
    names(alldata) <- c("subjectid", "activityid", paste0("V", c(1:66)))
    
    ## Read in activities and rename columns so we can merge on
    ## activityid with the main data set.
    activities <- read.table(activityFile)
    names(activities)[1:2] <- c("activityid", "activity")
    
    ## Merge main data set and activity data
    alldata <- merge(alldata, activities, by="activityid", sort = FALSE)
    
    ## Remove activityid column and put activity column as second column.
    ## All measurement columns follow in the same order they were in.
    alldata <- subset(alldata, select=c(2, 69, 3:68))
    
    alldata
}