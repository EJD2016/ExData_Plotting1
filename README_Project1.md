## title: "README_Project1.md"
## author: "E.D."
## date: "September 30, 2016"
## output: html_document

## Exporatory Data Analysis Course Project 
##Introduction
This assignment uses data from the UC Irvine Machine Learning Repository, a popular repository for machine learning datasets. In particular, we will be using the "Individual household electric power consumption Data Set".<BR>
.	Dataset: Electric power consumption [20Mb]<BR>
.	Description: Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. Different electrical quantities and some sub-metering values are available.<BR>

The following descriptions of the 9 variables in the dataset are taken from the UCI web site:<BR>
1.	Date: Date in format dd/mm/yyyy<BR> 
2.	Time: time in format hh:mm:ss <BR>
3.	Global_active_power: household global minute-averaged active power (in kilowatt) <BR>
4.	Global_reactive_power: household global minute-averaged reactive power (in kilowatt)<BR> 
5.	Voltage: minute-averaged voltage (in volt) <BR>
6.	Global_intensity: household global minute-averaged current intensity (in ampere)<BR> 
7.	Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).<BR> 
8.	Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. <BR>
9.	Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.<BR>

##Loading the data
When loading the dataset into R, please consider the following:<BR>
.	The dataset has 2,075,259 rows and 9 columns. First calculate a rough estimate of how much memory the dataset will require in memory before reading into R. Make sure your computer has enough memory (most modern computers should be fine).<BR>
.	We will only be using data from the dates 2007-02-01 and 2007-02-02. One alternative is to read the data from just those dates rather than reading in the entire dataset and subsetting to those dates.<BR>
.	You may find it useful to convert the Date and Time variables to Date/Time classes in R using the strptime() and as.Date() functions.<BR>
.	Note that in this dataset missing values are coded as ?.<BR>

##Making Plots
Our overall goal here is simply to examine how household energy usage varies over a 2-day period in February, 2007. Your task is to reconstruct the following plots below, all of which were constructed using the base plotting system.<BR>
First you will need to fork and clone the following GitHub repository: https://github.com/rdpeng/ExData_Plotting1
For each plot you should
.	Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.<BR>
.	Name each of the plot files as plot1.png, plot2.png, etc.<BR>
.	Create a separate R code file (plot1.R, plot2.R, etc.) that constructs the corresponding plot, i.e. code in plot1.R constructs the plot1.png plot. Your code file should include code for reading the data so that the plot can be fully reproduced. You should also include the code that creates the PNG file.<BR>
.	Add the PNG file and R code file to your git repository
When you are finished with the assignment, push your git repository to GitHub so that the GitHub version of your repository is up to date. There should be four PNG files and four R code files.
The four plots that were constructed can ve viewed at :
1. Plot1.png
2. Plot2.png 
3. Plot3.png
4. Plot4.png

## File names used in this project.
1. README.md (this file which provides an overview to the project.)
2. Plot1.R
3. Plot2.R
4. Plot3.R
5. Plot4.R

## Input Data.
Here are the input data for the project:
https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

## Output Data.
.Plot 1<BR>
A. Generate Frequency vs. Global Active Power Histogram<BR>
.Plot 2<BR>
B. Date-Time vs. Global Active Power<BR>
.Plot 3<BR>
C. Energy Sub Metering vs. Date-Time<BR>
.Plot 4<BR>
D. Date-Time vs. Global Active Power<BR>
E. Date-Time vs. Voltage<BR>
F. Date-Time vs. Sub-Metering<BR>
G. Date-Time vs. Global Reactive Power<BR>

 




