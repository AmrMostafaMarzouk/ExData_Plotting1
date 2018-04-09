filename<-"D:/Data Science/Course 4/household_power_consumption.txt"
mydata<-read.table(file=filename, sep=";", header= TRUE, stringsAsFactors=FALSE,dec=".")
twoDaysData<-mydata[mydata$Date %in% c("1/2/2007","2/2/2007"),]
png("plot1.png", width=480, height=480)
hist(as.numeric(twoDaysData$Global_active_power),xlab="Global Active Power (kilowatts)",main="Global Active Power",col="red")
dev.off()
