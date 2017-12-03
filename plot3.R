


getwd()
setwd("C:/HARD/work/JohnH/c4p1")
source("loadingofdata.R")

par(mfrow= c(1,1))

plot(datafile$Time,datafile$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering", col="black")
lines(datafile$Time,datafile$Sub_metering_2,col="red")
lines(datafile$Time,datafile$Sub_metering_3,col="blue")
legend("topright", col=c("black","red","blue"), legend =c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),lty=c(1,1), lwd=c(1,1), cex=0.75)

dev.copy(png, file="plot3.png", width=480, height=480)
dev.off()
cat("Plot3.png has been imported to ", getwd()) ## save to current directory 
