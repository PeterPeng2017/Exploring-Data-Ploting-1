# Plot 1
# open device
dev.cur()
if(!file.exists('figures')) dir.create('figures')
png(filename = './figures/plot1.png', width = 480, height = 480, units='px')
# plot figure
with(w1data, hist(Global_active_power, xlab = 'Global Active Power (kilowatt)', main = 'Global Active Power', col = 'red'))
# close device
dev.off()
