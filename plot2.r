filename<-"D:/Data Science/Course 4/household_power_consumption.txt"
mydata<-read.table(file=filename, sep=";", header= TRUE,stringsAsFactors=FALSE,dec=".")
twoDaysData<-mydata[mydata$Date %in% c("1/2/2007","2/2/2007"),]
Duration<-strptime(paste(twoDaysData$Date, twoDaysData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(Duration, as.numeric(twoDaysData$Global_active_power),xlab="",ylab="Global Active Power (kilowatts)",type="l")
dev.off()
