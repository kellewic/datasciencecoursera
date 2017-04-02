## Bring in our functions
run_analysis <- function(){
    source(paste0(c(getwd(), "0-vars.r"), collapse="/"))
    source(paste0(c(getwd(), "2-merge.r"), collapse="/"))
    source(paste0(c(getwd(), "3-extract.r"), collapse="/"))
    source(paste0(c(getwd(), "4-activities.r"), collapse="/"))
    source(paste0(c(getwd(), "5-label.r"), collapse="/"))
    source(paste0(c(getwd(), "6-tidy.r"), collapse="/"))
    
    mydata <- mergeData()
    mydata <- extract(mydata)
    mydata <- activities(mydata)
    mydata <- label(mydata)
    mydata <- tidy(mydata)
    
    ## Clean up the global environment
    clear_cpash_env()
    rm(cpash, clear_cpash_env, activities, extract, label, mergeData, tidy, pos=".GlobalEnv")
    
    mydata
}