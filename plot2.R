## Bring in cleaned data
source("download-cleanfile.R")

data_sub$Global_active_power <- as.numeric(data_sub$Global_active_power)

#create the histogram
plot(data_sub$datetime, data_sub$Global_active_power, type = 'l'
     , ylab = "Global Active Power (kilowatts)", xlab = "", col = "black")

#save to png
dev.copy(png, file = "plot2.png", height = 480, width = 480)
dev.off()