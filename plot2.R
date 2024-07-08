# Open a PNG file to save the plot
png("plot2.png", width = 480, height = 480)

# Generate the plot with x-axis type set to 'n' to handle the axis labels manually
plot(subset_data$DateTime, subset_data$Global_active_power, type = "l", 
     xlab = "", ylab = "Global Active Power (kilowatts)", xaxt = 'n')

# Define the locations for the x-axis labels (ensure these dates are within your data range)
at_dates <- as.POSIXct(c("2007-02-01", "2007-02-02", "2007-02-03"))

# Use the 'weekdays' function with abbreviate = TRUE to get abbreviated day names
day_labels <- weekdays(at_dates, abbreviate = TRUE)

# Add the custom x-axis
axis(1, at = at_dates, labels = day_labels)

# Close the device
dev.off()
