# Plot 2
# convert data and time to specific format
w1data$Date <- as.Date(w1data$Date, format = '%d/%m/%Y')
w1data$DateTime <- as.POSIXct(paste(w1data$Date, w1data$Time))
# open device
if(!file.exists('figures')) dir.create('figures')
png(filename = './figures/plot2.png', width = 480, height = 480, units='px')
# plot figure
Sys.setlocale(category = "LC_ALL", locale = "english")
plot(w1data$DateTime, w1data$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
# close device
dev.off()