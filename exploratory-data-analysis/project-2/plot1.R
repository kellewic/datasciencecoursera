plot1 <- function(){
    source(paste0(c(getwd(), "read_data.R"), collapse="/"))
    source(paste0(c(getwd(), "png.R"), collapse="/"))
    readData()

    agg <- aggregate(Emissions ~ year, data=nei, sum)

    openpng("plot1.png")
        plot(agg$year, agg$Emissions, type="l", ylab="Emissions", xlab="Year", main="All Emissions over Time")
    closepng()
}