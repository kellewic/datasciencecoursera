plot2 <- function(){
    source(paste0(c(getwd(), "read_data.R"), collapse="/"))
    source(paste0(c(getwd(), "png.R"), collapse="/"))
    readData()

    agg <- aggregate(Emissions ~ year, data=nei[nei$fips == "24510",], sum)

    openpng("plot2.png")
        plot(agg$year, agg$Emissions, type="l", ylab="Emissions", xlab="Year", main="All Emissions Over Time")
        mtext(text="Baltimore City", side=3, line=0)
    closepng()
}