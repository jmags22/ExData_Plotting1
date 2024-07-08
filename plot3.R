# Open a PNG file to save the plot
png("plot3.png", width = 480, height = 480)

# Plot the first sub metering with no initial x-axis labels
plot(subset_data$DateTime, subset_data$Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering", xaxt = 'n')

# Add lines for each sub metering
lines(subset_data$DateTime, subset_data$Sub_metering_1, col = "black")
lines(subset_data$DateTime, subset_data$Sub_metering_2, col = "red")
lines(subset_data$DateTime, subset_data$Sub_metering_3, col = "blue")

# Define the locations for the x-axis labels (ensure they correspond to the data)
# Adjust these dates if your data set does not extend past 2007-02-02
at_dates <- as.POSIXct(c("2007-02-01", "2007-02-02", "2007-02-03"))

# Use the 'weekdays' function with abbreviate = TRUE for abbreviated day names
day_labels <- weekdays(at_dates, abbreviate = TRUE)

# Add the custom x-axis with day names only
axis(1, at = at_dates, labels = day_labels)

# Add a legend to the plot
legend("topright", c("Sub metering 1", "Sub metering 2", "Sub metering 3"), lty = 1, col = c("black", "red", "blue"))

# Close the device
dev.off()
