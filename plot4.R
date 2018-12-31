## Bring in cleaned data
source("download-cleanfile.R")

###Create graph space (2 rows, 2 columns)
par(mfrow = c(2,2))

##1st quadrant graph 
data_sub$Global_active_power <- as.numeric(data_sub$Global_active_power)

  #create the histogram
plot(data_sub$datetime, data_sub$Global_active_power, type = 'l'
     , ylab = "Global Active Power (kilowatts)", xlab = "", col = "black", cex.lab = .75)

##2nd quadrant graph

plot(data_sub$datetime, data_sub$Voltage, type = 'l'
     , ylab = "Voltage", xlab = "datetime", col = "black", cex.lab = .75)

##3rd quadrant graph
plot(data_sub$datetime, data_sub$Sub_metering_1, type = 'l'
     , ylab = "Energy sub metering", xlab = "", col = "black", cex.lab = .75)
points(data_sub$datetime, data_sub$Sub_metering_2, type = "l", col = "red")
points(data_sub$datetime, data_sub$Sub_metering_3, type = "l", col = "blue")

legend("topright", cex = 0.35, col = c("black", "red", "blue")
       , legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty = 1)



##4th quadrant graph
data_sub$Global_reactive_power <- as.numeric(data_sub$Global_reactive_power)

#create the histogram
plot(data_sub$datetime, data_sub$Global_reactive_power, type = 'l'
     , ylab = "global_reactive_power", xlab = "datetime", col = "black", cex.lab = .75)

#save to png
dev.copy(png, file = "plot4.png", height = 480, width = 480)
dev.off()