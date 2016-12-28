setwd("~/GitHubProjects/ExData_Plotting1")
data <- read.csv("household_power_consumption.txt", sep=";", na.strings = "?", dec=".")

data <- data[which(data$Date %in% c("1/2/2007","2/2/2007")),]
data$DateTime <- strptime(paste(data$Date,data$Time), format= "%d/%m/%Y %H:%M:%S") 

head(data)
  
png(filename= "plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))

plot(data$DateTime,data$Global_active_power, type="l", lwd=1, ylab = "Global Active Power")

plot(data$DateTime,data$Voltage, type="l", lwd=1,  ylab = "Voltage")

plot(data$DateTime,data$Sub_metering_1, type="l", ylab = "Energy to submetering")
lines(data$DateTime,data$Sub_metering_2, col="red")
lines(data$DateTime,data$Sub_metering_3, col="blue")
legend("topright", lwd = c(2,2,2) , pt.bg = "black", col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(data$DateTime,data$Global_reactive_power, type="l", lwd=1, ylab = "Global reactive power")

dev.off()
