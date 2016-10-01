## E.D. September 30, 2016
## The Plot 1.R script will examine data over the date period Feburary 1, 2007 to Feburary 2, 2007.
## A. Generate Frequency vs. Global Active Power Histogram

##Get the Data Set.
mydata_txtfile <- "./mydata_DS4/household_power_consumption.txt" 
mydata <- read.table(mydata_txtfile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".") 

##Create a subset of the data we need to look at: Feburary 1, 2007 to Feburary 2, 2007. 
subSet_mydata <- mydata[mydata$Date %in% c("1/2/2007","2/2/2007") ,] 

#Get Active POwer Data for the interval Feburary 1, 2007 to Feburary 2, 2007.
global_ActivePower <- as.numeric(subSet_mydata$Global_active_power) 
png("plot1.png", width=480, height=480) 

#Generate the histogram using red boxes, label the title, and label the x-axis.
hist(global_ActivePower, col="red", main="Global Active Power", xlab="Global Active Power (in kilowatts)") 

# Close the file.
dev.off() 
 
