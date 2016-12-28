setwd("~/GitHubProjects/ExData_Plotting1")
data <- read.csv("household_power_consumption.txt", sep=";", na.strings = "?", dec=".")

data <- data[which(data$Date %in% c("1/2/2007","2/2/2007")),]
data$DateTime <- strptime(paste(data$Date,data$Time), format= "%d/%m/%Y %H:%M:%S") 

head(data)

  
png(filename= "plot3.png", width = 480, height = 480)

plot(data$DateTime,data$Sub_metering_1, type="l")
lines(data$DateTime,data$Sub_metering_2, col="red")
lines(data$DateTime,data$Sub_metering_3, col="blue")
legend("topright", lwd = c(1,2,3) , pt.bg = "black", col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
