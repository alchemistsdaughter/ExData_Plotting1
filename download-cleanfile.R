filename = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
if(!file.exists('.Electric power consumption.zip')) {
    download.file(filename, './Electric power consumption.zip', mode = 'wb')
    unzip("Electric power consumption.zip", exdir = getwd())
}

#read data table, specify classes
data <- read.table("./household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", colClass = c('character', 'character', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric'))

#change the class for date Columns
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

#subset data to only 2007-02-01 -- 2007-02-02
data_sub <- subset(data, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-2-2"))

#create combined date and time column in POSIXct
data_sub$datetime <- as.POSIXct(strptime(paste(data_sub$Date, data_sub$Time, sep = " "),
                                format = "%Y-%m-%d %H:%M:%S"))