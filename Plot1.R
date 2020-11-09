> Hpw <- read.csv("household_power_consumption.txt", header = TRUE,sep=';', na.strings="?",nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"' )
> Date <- subset(Hpw, Date %in% c("1/2/2007","2/2/2007"))
> Date$Date <- as.Date(Date$Date, format="%d/%m/%Y")
> hist(data1$Global_active_power, main="Global Active Power",,xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red") )
