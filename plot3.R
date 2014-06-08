data <- read.table("household_power_consumption.txt", header=TRUE, sep=";")
data <- data[data$Date=="1/2/2007"|data$Date=="2/2/2007",]
dateTime <- paste(data$Date, data$Time, sep=' ')
dateTime <- strptime(dateTime, format="%d/%m/%Y %H:%M:%S")
data$DataTime <- dateTime
png(file="plot3.png")
with(data,{
  plot(DataTime,Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
  lines(DataTime,Sub_metering_2,type="l",col="red")
  lines(DataTime,Sub_metering_3,type="l",col="blue")
})
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd="1",col=c("black","red","blue"))
dev.off()