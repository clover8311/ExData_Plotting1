dat <- read.csv('/Users/yanze/Documents/coursera-dataScience/exploratoryDataAnalysis/household_power_consumption.txt', sep = ";", header = TRUE);
View(dat);
dat$Date <- as.Date(as.character(dat$Date));
plot_dat <- dat[dat$Date %in% c("1/2/2007","2/2/2007") ,];
summary(plot_dat);

#plot the line chart
datetime <- strptime(paste(plot_dat$Date, plot_dat$Time, sep=" "), "%d/%m/%Y %H:%M:%S");
Sub_metering_1 <- as.numeric(plot_dat$Sub_metering_1);
Sub_metering_2 <- as.numeric(plot_dat$Sub_metering_2);
Sub_metering_3 <- as.numeric(plot_dat$Sub_metering_3);
png("/Users/yanze/github/ExData_Plotting1/plot3.png", width=480, height=480);
plot(datetime, Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(datetime, Sub_metering_2, type="l", col="red")
lines(datetime, Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off();
