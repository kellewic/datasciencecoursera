plot3 <- function(){
    source(paste0(c(getwd(), "read_data.R"), collapse="/"))
    library(ggplot2)
    readData()

    agg <- aggregate(Emissions ~ type+year, data=nei[nei$fips == "24510",], sum)

    ggplot(agg, aes(x=type, y=Emissions, ymax=max(Emissions)*1.1)) +
        ggtitle("Emissions by Type/Year for Baltimore City") +
        geom_bar(position="dodge", stat="identity") +
        geom_text(aes(label=round(Emissions, digits=3)), position=position_dodge(width=0.9), vjust=-0.25) +
        facet_grid(year ~ .)

    ggsave("plot3.png")
}