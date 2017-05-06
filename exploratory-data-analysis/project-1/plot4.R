plot4 <- function(){
    source(paste0(c(getwd(), "read_data.R"), collapse="/"))
    source(paste0(c(getwd(), "png.R"), collapse="/"))
    hpc <- readData()

    openpng("plot4.png")
        par(mfrow=c(2,2), pin=c(2.25,1.5))

        ## Only want to change right margin so get current margins
        m <- par("mar")

        ## Change right margin
        par(mar=c(m[1:3], 1.5))

        ## Upper left
        ## This is plot2 with a slightly different y-axis label
        plot(
            hpc$Date,
            hpc$Global_active_power,
            type="l",
            ylab="Global Active Power",
            xlab=""
        )

        ## Upper right
        plot(hpc$Date, hpc$Voltage, type="l", ylab="Voltage", xlab="datetime")

        ## Lower left
        ## This is plot3 with slightly different legend format
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

        legend("topright", x_items, col=colors, lwd=2.5, bty="n")

        ## Lower right
        plot(hpc$Date, hpc$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime")
    closepng()
}