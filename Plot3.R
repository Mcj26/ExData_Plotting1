Hpc <- read.csv("household_power_consumption.txt", header=TRUE, sep=';', na.strings="?", nrows=2075259, check.names=FALSE, stringsAsFactors=FALSE, comment.char="", quote='\"')
dates <- subset(Hpc, Date %in% c("1/2/2007","2/2/2007"))
dates$Date <- as.Date(dates$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(dates$Date), dates$Time)
dates$Datetime <- as.POSIXct(datetime)
with(dates, {
  plot(Sub_metering_1~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
  lines(Sub_metering_2~Datetime,col='Red')
  lines(Sub_metering_3~Datetime,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))