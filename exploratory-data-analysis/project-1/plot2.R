plot2 <- function(){
    source(paste0(c(getwd(), "read_data.R"), collapse="/"))
    source(paste0(c(getwd(), "png.R"), collapse="/"))
    hpc <- readData()

    openpng("plot2.png")
        plot(
            hpc$Date,
            hpc$Global_active_power,
            type="l",
            ylab="Global Active Power (kilowatts)",
            xlab=""
        )
    closepng()
}