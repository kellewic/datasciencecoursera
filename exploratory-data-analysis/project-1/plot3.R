plot3 <- function(){
    source(paste0(c(getwd(), "read_data.R"), collapse="/"))
    source(paste0(c(getwd(), "png.R"), collapse="/"))
    hpc <- readData()

    openpng("plot3.png")
        x_items <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
        colors <- c("black", "red", "blue")

        matplot(
            as.matrix(hpc[, x_items]),
            type="l",
            ylab="Energy sub metering",
            xlab="",
            xaxt="n"
        )

        ## Make all lines solid
        lines(hpc$Sub_metering_1, type="l", col="black")
        lines(hpc$Sub_metering_2, type="l", col="red")
        lines(hpc$Sub_metering_3, type="l", col="blue")

        ## Add x-axis labels using the axis' min/max values
        pmin <- par("usr")[1]
        pmax <- par("usr")[2]
        axis(1, labels=c("Thu", "Fri", "Sat"), at=c(0, (pmax+pmin)/2, pmax+pmin))

        legend("topright", x_items, col=colors, lwd=2.5)
    closepng()
}