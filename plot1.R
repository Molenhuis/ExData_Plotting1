setwd("~/GitHubProjects/ExData_Plotting1")
data <- read.csv("household_power_consumption.txt", sep=";", na.strings = "?", dec=".")

data <- data[which(data$Date %in% c("1/2/2007","2/2/2007")),]
data$DateTime <- strptime(paste(data$Date,data$Time), format= "%d/%m/%Y %H:%M:%S") 

png(filename= "plot1.png", width = 480, height = 480)

hist(data$Global_active_power, col="red", ylab = "Frequency", xlab = "Global Active Power (kilowatts)", main ="Global active power")

dev.off()
