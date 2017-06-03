plot4 <- function(){
    source(paste0(c(getwd(), "read_data.R"), collapse="/"))
    source(paste0(c(getwd(), "png.R"), collapse="/"))
    readData()

    ## Get all the SCCs for coal-related items
    coal_sccs <- scc[grep("coal", scc$EI.Sector, ignore.case=T),]$SCC

    ## Aggregate emissions by year for coal-related SCCs
    agg <- aggregate(Emissions ~ year, data=nei[nei$SCC %in% coal_sccs,], sum)

    openpng("plot4.png")
        plot(agg$year, agg$Emissions, type="l", ylab="Emissions", xlab="Year", main="All Coal Emissions")
    closepng()
}