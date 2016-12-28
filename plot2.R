setwd("~/GitHubProjects/ExData_Plotting1")
data <- read.csv("household_power_consumption.txt", sep=";", na.strings = "?", dec=".")

data <- data[which(data$Date %in% c("1/2/2007","2/2/2007")),]
data$DateTime <- strptime(paste(data$Date,data$Time), format= "%d/%m/%Y %H:%M:%S") 

png(filename= "plot2.png", width = 480, height = 480)

plot(data$DateTime,data$Global_active_power, type="l", lwd=2)

dev.off()
