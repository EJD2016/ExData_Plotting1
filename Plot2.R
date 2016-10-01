## E.D. September 30, 2016
## The Plot 2.R script will examine data over the date period Feburary 1, 2007 to Feburary 2, 2007.
## A. Date-Time vs. Global Active Power

##Get the Data Set.
mydata_txtfile <- "./mydata_DS4/household_power_consumption.txt" 
mydata <- read.table(mydata_txtfile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".") 

##Create a subset of the data we need to look at: Feburary 1, 2007 to Feburary 2, 2007. 
subSet_mydata <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007") ,] 

##Clean up the date and time variables.
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

#Get Active Power Data for the interval Feburary 1, 2007 to Feburary 2, 2007.
global_ActivePower <- as.numeric(subSet_mydata$Global_active_power)  
png("plot2.png", width=480, height=480) 

#Generate the graph.
plot(datetime, global_ActivePower, type="l", xlab="", ylab="Global Active Power (in kilowatts)") 

#Close the file.
dev.off() 





