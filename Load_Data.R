library(dplyr)
rowdata <- read.table("./household_power_consumption.txt", sep=";", header = TRUE, na.strings = "?")
rowdata$Date <- as.Date(rowdata$Date,'%d/%m/%Y')
rowdata$Time <- as.POSIXct(strptime(paste(rowdata$Date, ' ', rowdata$Time), '%Y-%m-%d %H:%M:%S'))
rowdata <- filter(rowdata, Time >= '2007-02-01 00:00:00', Time < '2007-02-03 00:00:00')




