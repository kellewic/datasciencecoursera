plot6 <- function(){
    source(paste0(c(getwd(), "read_data.R"), collapse="/"))
    source(paste0(c(getwd(), "png.R"), collapse="/"))
    readData()

    ## Get data for Baltimore City, Maryland
    bmc_nei <- nei[nei$fips == "24510",]

    ## Get data for Los Angelese County
    lac_nei <- nei[nei$fips == "06037",]

    ## Get all the SCCs for motor vehicle related items
    veh_sccs <- scc[grep("vehicle", scc$EI.Sector, ignore.case=T),]$SCC

    ## Aggregate emissions by year for vehicle-related SCCs
    agg_bmc <- aggregate(Emissions ~ year, data=bmc_nei[bmc_nei$SCC %in% veh_sccs,], sum)
    agg_lac <- aggregate(Emissions ~ year, data=lac_nei[lac_nei$SCC %in% veh_sccs,], sum)

    openpng("plot6.png")
        par(mfrow=c(2,1), pin=c(5, 1.6))
        plot(agg_bmc$year, agg_bmc$Emissions, type="l", ylab="Emissions", xlab="")
        mtext(text="Year", side=1, line=2)
        mtext(text="Baltimore City Vehicle Emissions", side=3, line=0, cex=1.25)

        plot(agg_lac$year, agg_lac$Emissions, type="l", ylab="Emissions", xlab="")
        mtext(text="Year", side=1, line=2)
        mtext(text="Los Angeles County Vehicle Emissions", side=3, line=0, cex=1.25)
    closepng()
}