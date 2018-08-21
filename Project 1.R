setwd("d:/Programs/R/WD/Assignments/Exploratory Data Analysis/Week 1")
  data<-read.table("data/household_power_consumption.txt",header=TRUE,na.strings = "?",sep=";",stringsAsFactors = FALSE)
  subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
  
  ##Plot1
  subsetdata <- subset(data, Date == "2007-02-01" | Date =="2007-02-02")
  png("plot1.png", width=480, height=480)
  hist(subsetdata$Global_active_power, col="red", border="black", main ="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")