setwd("d:/Programs/R/WD/Assignments/Exploratory Data Analysis")
data<-read.table("data/household_power_consumption.txt",header=TRUE,na.strings = "?",sep=";",stringsAsFactors = FALSE)
TimeDate<-strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
data<-cbind(data, TimeDate)
data$Date <- as.Date(data$Date, format="%d/%m/%Y")

##Plot2
subsetdata <- subset(data, Date == "2007-02-01" | Date =="2007-02-02")
png("plot2.png", width=480, height=480)
with(subsetdata,plot(TimeDate, Global_active_power, type="l",xlab="Day", ylab="Global Active Power (kilowatts)"))
dev.off()
