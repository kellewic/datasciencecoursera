readData <- function(){
    csv_file <- "household_power_consumption.txt"

    ## Since we are reading a specific subset of data, we just read the
    ## header here so we can assign back to the column names.
    header <- read.csv(csv_file, sep=";", nrows=1, header=F)

    ## Skip reading data until the first entry for 2007-02-01
    ## and only read data until the last entry for 2007-02-02
    hpc <- read.csv(csv_file, sep=";", skip=66637, nrows=2880, header=F)

    ## Put column names in the data frame
    colnames(hpc) <- unlist(header)

    ## Concatenate Date Time and remove Time from the data frame
    hpc$Date <- do.call(paste, c(hpc[c("Date", "Time")], sep=" "))
    hpc <- subset(hpc, select = -Time)

    ## Format Date Time as POSIX
    hpc$Date <- strptime(hpc$Date, format="%d/%m/%Y %H:%M:%S")

    hpc
}