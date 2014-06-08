data <- read.table("household_power_consumption.txt", header=TRUE, sep=";")
data <- data[data$Date=="1/2/2007"|data$Date=="2/2/2007",]
png(file="plot1.png")
hist(as.numeric(data$Global_active_power),main="Global Active Power",col="red",xlab="Global Active Power (kilowatts)",ylab="Frequency")
dev.off()
