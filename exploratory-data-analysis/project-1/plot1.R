plot1 <- function(){
    source(paste0(c(getwd(), "read_data.R"), collapse="/"))
    source(paste0(c(getwd(), "png.R"), collapse="/"))
    hpc <- readData()

    openpng("plot1.png")
        hist(
            hpc$Global_active_power,
            freq=T,
            main="Global Active Power",
            xlab="Global Active Power (kilowatts)",
            ylab="Frequency",
            col="red"
        )
    closepng()
}