## Bring in cleaned data
source("download-cleanfile.R")

#create the histogram
plot(data_sub$datetime, data_sub$Sub_metering_1, type = 'l'
     , ylab = "Energy sub metering", xlab = "", col = "black")
points(data_sub$datetime, data_sub$Sub_metering_2, type = "l", col = "red")
points(data_sub$datetime, data_sub$Sub_metering_3, type = "l", col = "blue")

legend("topright", cex = 0.75, col = c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty = 1)

#save to png
dev.copy(png, file = "plot3.png", height = 480, width = 480)
dev.off()