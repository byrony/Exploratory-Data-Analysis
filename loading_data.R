# please modify the directory

dir <- "D:/Coursera/4. Exploratory Data Analysis/Week 1/"
setwd(dir)
filename <- "household_power_consumption.txt"
#filename <- "h2.txt"
#dataset <- read.table(filename, header = TRUE, sep=";")


dataset <- read.table(filename, header = TRUE, sep=";", na.strings = "?")
newData <- subset(dataset, Date == "1/2/2007" | Date =="2/2/2007")
attach(newData)

#merge and convert date
x <- paste(Date, Time)
newData$newDate <- strptime(x, "%d/%m/%Y %H:%M:%S")
attach(newData)