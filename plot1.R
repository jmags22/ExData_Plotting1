# Open a PNG file to save the plot
png("plot1.png", width = 480, height = 480)

# Generate a histogram of the Global Active Power
# Main title and x-axis label are specified, and the color of the histogram bars is set to red
# The number of bins for the histogram is set to 25 for a clearer distribution visualization
hist(subset_data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red", breaks = 25)

# Close the device, which saves the plot to the file
dev.off()
