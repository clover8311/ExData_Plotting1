dat <- read.csv('/Users/yanze/Documents/coursera-dataScience/exploratoryDataAnalysis/household_power_consumption.txt', sep = ";", header = TRUE);
View(dat);
dat$Date <- as.Date(as.character(dat$Date));
plot_dat <- dat[dat$Date %in% c("1/2/2007","2/2/2007") ,];
summary(plot_dat);

#plot the line chart
datetime <- strptime(paste(plot_dat$Date, plot_dat$Time, sep=" "), "%d/%m/%Y %H:%M:%S");
globalActivePower <- as.numeric(plot_dat$Global_active_power);
png("/Users/yanze/github/ExData_Plotting1/plot2.png", width=480, height=480);
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)");
dev.off();
