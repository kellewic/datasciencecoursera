plot5 <- function(){
    source(paste0(c(getwd(), "read_data.R"), collapse="/"))
    source(paste0(c(getwd(), "png.R"), collapse="/"))
    readData()

    ## Get data for Baltimore City, Maryland
    bmc_nei <- nei[nei$fips == "24510",]

    ## Get all the SCCs for motor vehicle related items
    veh_sccs <- scc[grep("vehicle", scc$EI.Sector, ignore.case=T),]$SCC

    ## Aggregate emissions by year for vehicle-related SCCs
    agg <- aggregate(Emissions ~ year, data=bmc_nei[bmc_nei$SCC %in% veh_sccs,], sum)

    openpng("plot5.png")
        plot(agg$year, agg$Emissions, type="l", ylab="Emissions", xlab="Year", main="Vehicle Emissions for Baltimore City")
    closepng()
}