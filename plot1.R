source("Load_Data.R")

data <- rowdata


hist(data$Global_active_power, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")

png(filename = "plot1.png", width = 480, height = 480)

dev.off()


