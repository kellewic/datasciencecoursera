openpng <- function(name){
    png(name, width=480, height=480, units="px")
}

closepng <- function(){
    dev.off()
}