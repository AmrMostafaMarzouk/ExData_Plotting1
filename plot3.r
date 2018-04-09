filename<-"D:/Data Science/Course 4/household_power_consumption.txt"
mydata<-read.table(file=filename, sep=";", header= TRUE,stringsAsFactors=FALSE,dec=".")
twoDaysData<-mydata[mydata$Date %in% c("1/2/2007","2/2/2007"),]
Duration<-strptime(paste(twoDaysData$Date, twoDaysData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

png("plot3.png", width=480, height=480)
plot(Duration,as.numeric(twoDaysData$Sub_metering_1),xlab="",type="l",ylab="Energy sub metering")
lines(Duration,as.numeric(twoDaysData$Sub_metering_2), type="l", col="red")
lines(Duration, as.numeric(twoDaysData$Sub_metering_3), type="l", col="blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
