readData <- function(){
    zipfile <- "NEI_data.zip"
    url <- paste0(c("https://d396qusza40orc.cloudfront.net/exdata/data", zipfile), collapse="/")

    scc_file <- "Source_Classification_Code.rds"
    nei_file <- "summarySCC_PM25.rds"

    if (!file.exists(scc_file) || !file.exists(nei_file)){
        if (!file.exists(zipfile)){
            download.file(url, zipfile)
        }

        unzip(zipfile, overwrite=TRUE)
    }

    if (!exists("scc", inherits=F, envir=.GlobalEnv)){
        assign("scc", readRDS(scc_file), envir = .GlobalEnv)
    }

    if (!exists("nei", inherits=F, envir=.GlobalEnv)){
        assign("nei", readRDS(nei_file), envir = .GlobalEnv)
    }
}