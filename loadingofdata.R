urlpath <-"https://raw.githubusercontent.com/jprider63/CMSC727-Project/master/test/household_power_consumption.txt"
download.file(urlpath,destfile = "household_power_consumption.txt")


data <- read.table("household_power_consumption.txt", header= TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
summary(data)
datafile <-data 

datafile$Time <- strptime(paste(datafile$Date, datafile$Time), "%d/%m/%Y %H:%M:%S")
datafile$Date <- as.Date(datafile$Date, "%d/%m/%Y")
dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")## reading specefic dates
datafile <- subset(datafile, Date %in% dates)

datafile$Global_active_power <- as.numeric(as.character(datafile$Global_active_power))## convert to numberic format to exploit the plot
datafile$Global_reactive_power <- as.numeric(as.character(datafile$Global_reactive_power))
datafile$Voltage <- as.numeric(as.character(datafile$Voltage))


