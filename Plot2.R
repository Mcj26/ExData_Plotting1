Hpc <- read.csv("household_power_consumption.txt", header=TRUE, sep=';', na.strings="?", nrows=2075259, check.names=FALSE, stringsAsFactors=FALSE, comment.char="", quote='\"')
dates <- subset(Hpc, Date %in% c("1/2/2007","2/2/2007"))
dates$Date <- as.Date(dates$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(dates$Date), data1$Time)
dates$Datetime <- as.POSIXct(datetime)
with(dates, {
  plot(Global_active_power~Datetime, type="l",
  ylab="Global Active Power (kilowatts)", xlab="")
  })
