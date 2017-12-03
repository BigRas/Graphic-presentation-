

getwd()
setwd("C:/HARD/work/JohnH/c4p1")
source("loadingofdata.R")


par(mfrow= c(1,1))
plot(datafile$Time,datafile$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()
cat("Plot2.png has been imported to ", getwd()) ## save to current directory 
