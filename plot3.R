setwd("d:/Programs/R/WD/Assignments/Exploratory Data Analysis")
data<-read.table("data/household_power_consumption.txt",header=TRUE,na.strings = "?",sep=";",stringsAsFactors = FALSE)
TimeDate<-strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
data<-cbind(data, TimeDate)
data$Date <- as.Date(data$Date, format="%d/%m/%Y")

##Plot3
subsetdata <- subset(data, Date == "2007-02-01" | Date =="2007-02-02")
png("plot3.png", width=480, height=480)
with(subsetdata, plot(TimeDate, Sub_metering_1, type="l", xlab="Day", ylab="Energy sub metering"))
lines(subsetdata$TimeDate, subsetdata$Sub_metering_2,type="l", col= "red")
lines(subsetdata$TimeDate, subsetdata$Sub_metering_3,type="l", col= "blue")
legend(c("topright"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty= 1, lwd=2, col = c("black", "red", "blue"))
dev.off()
