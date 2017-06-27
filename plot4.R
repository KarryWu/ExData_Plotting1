source("Load_Data.R")

data <- rowdata

png(filename = "plot4.png", width = 480, height = 480)

par(mfrow=c(2,2))

##
plot(data$Time,data$Global_active_power,ylab='Global Active Power (kilowatts)', xlab='', type='l')
##
plot(data$Time,data$Voltage,xlab='datetime',ylab='Voltage',type='l')
##
plot(data$Time,data$Sub_metering_1, ylab ='Energy sub metering',xlab = '', col = 'black', type='l')
lines(data$Time,data$Sub_metering_2, col = "red")
lines(data$Time,data$Sub_metering_3, col = "blue")
legend('topright',legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty="solid")
##
plot(data$Time, data$Global_reactive_power,xlab='datetime',ylab='Global_reactive_power',type='l')


dev.off()



