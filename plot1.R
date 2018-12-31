## Bring in cleaned data
source("download-cleanfile.R")

#create the histogram
hist(data_sub$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")


#save to png
dev.copy(png, file = "plot1.png", height = 480, width = 480)
dev.off()