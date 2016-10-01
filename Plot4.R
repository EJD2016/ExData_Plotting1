## E.D. September 30, 2016
## The Plot 4.R script will examine data over the date period Feburary 1, 2007 to Feburary 2, 2007.
## 4 plots will be generated. 
## A. Date-Time vs. Global Active Power
## B. Date-Time vs. Voltage
## C. Date-Time vs. Sub-Metering
## D. Date-Time vs. Global Reactive Power

##Get the Data Set.
mydata_txtfile <- "./mydata_DS4/household_power_consumption.txt" 
mydata <- read.table(mydata_txtfile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".") 

##Create a subset of the data we need to look at: Feburary 1, 2007 to Feburary 2, 2007. 
subSet_mydata <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007") ,] 

##Clean up the date and time variables.
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power) 
globalReactivePower <- as.numeric(subSetData$Global_reactive_power) 
voltage <- as.numeric(subSetData$Voltage) 
subMetering1 <- as.numeric(subSetData$Sub_metering_1) 
subMetering2 <- as.numeric(subSetData$Sub_metering_2) 
subMetering3 <- as.numeric(subSetData$Sub_metering_3) 
png("plot4.png", width=480, height=480) 

#Create a 2 x 2 partition window.
par(mfrow = c(2, 2))  

#Generate the graphs.
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2) 
plot(datetime, voltage, type="l", xlab="Date-time", ylab="Voltage") 
plot(datetime, subMetering1, col = "black", type="l", xlab = "", ylab="Energy Sub-Metering") 
lines(datetime, subMetering2, col="red", type="l") 
lines(datetime, subMetering3, col="blue", type="l") 
legend("topright", c("Sub-Metering-1", "Sub-Metering-2", "Sub-Metering-3"), col=c("black", "red", "blue"), lty=1, lwd=3.0,  bty="o") 
plot(datetime, globalReactivePower, type="l", xlab="Date-time", ylab="Global-Reactive-Power") 

#close the file.
dev.off() 
