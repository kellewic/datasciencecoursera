writeData <- function(alldata, file=""){
    ## If no file is provided, data is written in working directory
    if (file == ""){
        file <- paste0(c(getwd(), "output-data.txt"), collapse="/")
    }
    
    write.table(alldata, file, row.names = FALSE)
}

readData <- function(file=""){
    ## Pull in our labeling function since read.table replaces our
    ## column name dashes to dots using make.names.
    source(paste0(c(getwd(), "5-label.r"), collapse="/"))
    
    ## If no file is provided, data is read from working directory
    if (file == ""){
        file <- paste0(c(getwd(), "output-data.txt"), collapse="/")
    }
    
    label(read.table(file, header = TRUE))
}