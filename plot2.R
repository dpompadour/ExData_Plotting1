data <- read.table("household_power_consumption.txt", header=TRUE, sep=";")
data <- data[data$Date=="1/2/2007"|data$Date=="2/2/2007",]
dateTime <- paste(data$Date, data$Time, sep=' ')
dateTime <- strptime(dateTime, format="%d/%m/%Y %H:%M:%S")
data$DataTime <- dateTime
png(file="plot2.png")
with(data,plot(DataTime,Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)"))
dev.off()