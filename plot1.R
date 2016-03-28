dat <- read.csv('/Users/yanze/Documents/coursera-dataScience/exploratoryDataAnalysis/household_power_consumption.txt', sep = ";", header = TRUE);
View(dat);
dat$Date <- as.Date(as.character(dat$Date));
plot_dat <- dat[dat$Date %in% c("1/2/2007","2/2/2007") ,];
summary(plot_dat);

#plot the histogram
globalActivePower <- as.numeric(plot_dat$Global_active_power);
png("/Users/yanze/github/ExData_Plotting1/plot1.png", width=480, height=480);
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)");
dev.off();
