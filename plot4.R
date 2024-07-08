# Open a PNG file to save the plot
png("plot4.png", width = 480, height = 480)

# Setup the plot layout to display 4 plots in a 2x2 grid
par(mfrow = c(2, 2))

# Define the locations for the x-axis labels (ensure they correspond to the data)
at_dates <- as.POSIXct(c("2007-02-01", "2007-02-02", "2007-02-03"))

# Use the 'weekdays' function with abbreviate = TRUE for abbreviated day names
day_labels <- weekdays(at_dates, abbreviate = TRUE)

# Plot 1: Global Active Power
plot(subset_data$DateTime, subset_data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power", xaxt = 'n')
axis(1, at = at_dates, labels = day_labels)

# Plot 2: Voltage
plot(subset_data$DateTime, subset_data$Voltage, type = "l", xlab = "datetime", ylab = "Voltage", xaxt = 'n')
axis(1, at = at_dates, labels = day_labels)

# Plot 3: Energy Sub Metering with all three sub-meterings and a legend
plot(subset_data$DateTime, subset_data$Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering", xaxt = 'n')
lines(subset_data$DateTime, subset_data$Sub_metering_1, col = "black")
lines(subset_data$DateTime, subset_data$Sub_metering_2, col = "red")
lines(subset_data$DateTime, subset_data$Sub_metering_3, col = "blue")
legend("topright", c("Sub metering 1", "Sub metering 2", "Sub metering 3"), lty = 1, col = c("black", "red", "blue"))
axis(1, at = at_dates, labels = day_labels)

# Plot 4: Global Reactive Power
plot(subset_data$DateTime, subset_data$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global Reactive Power", ylim = c(0.0, 0.5), xaxt = 'n')
axis(1, at = at_dates, labels = day_labels)

# Close the device
dev.off()
