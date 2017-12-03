getwd()
setwd("C:/HARD/work/JohnH/c4p1")
source("loadingofdata.R")

par(mfrow= c(1,1))
hist(datafile$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency",col="red")
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()
cat("Plot1.png has been imported to ", getwd()) ## save to current directory 
