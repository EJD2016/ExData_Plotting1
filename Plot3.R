## E.D. September 30, 2016
## The Plot 3.R script will examine data over the date period Feburary 1, 2007 to Feburary 2, 2007.
## A. Energy Sub Metering vs. Date-Time 

##Get the Data Set.
mydata_txtfile <- "./mydata_DS4/household_power_consumption.txt" 
mydata <- read.table(mydata_txtfile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".") 

##Create a subset of the data we need to look at: Feburary 1, 2007 to Feburary 2, 2007. 
subSet_mydata <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007") ,] 

#str(subSetData) 
##Clean up the date and time variables.
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

#Get Active Power Data, and sub metering data for the interval Feburary 1, 2007 to Feburary 2, 2007.
globalActivePower <- as.numeric(subSetData$Global_active_power) 
subMetering1 <- as.numeric(subSetData$Sub_metering_1) 
subMetering2 <- as.numeric(subSetData$Sub_metering_2) 
subMetering3 <- as.numeric(subSetData$Sub_metering_3) 
png("plot3.png", width=480, height=480) 

#Generate the graph.
plot(datetime, subMetering1,  col="black", xlab="", ylab="Energy Sub-Metering", type="l") 
lines(datetime, subMetering2, col="red", type="l") 
lines(datetime, subMetering3, col="blue", type="l") 
legend("topright", c("Sub-Metering-1", "Sub-Metering-2", "Sub-Metering-3"), col=c("black", "red", "blue"), lty=1, lwd=3.0, bty="o") 

#Close the file.
dev.off() 

