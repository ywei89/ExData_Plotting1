## Read the data
source("read.R")
dat <- readData()

## Plot the histogram
png(filename = "plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2))

## Plot the 1st graph
with(dat, {
  plot(Datetime, Global_active_power, type = "n",
       xlab = NULL, ylab = "Global Active Power")
  lines(Datetime, Global_active_power, col = "black")
})

## Plot the 2nd graph
with(dat, {
  plot(Datetime, Voltage, type = "n",
       xlab = NULL, ylab = "Voltage")
  lines(Datetime, Voltage, col = "black")
})

## Plot the 3rd graph
with(dat, {
  plot(Datetime, Sub_metering_1,
       xlab = NULL, ylab = "Energy sub metering",
       type = "n")
  lines(Datetime, Sub_metering_1,
        col = "black")
  lines(Datetime, Sub_metering_2,
        col = "red")
  lines(Datetime, Sub_metering_3,
        col = "blue")
})
legend("topright", lty = 1, bty = "n",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "blue", "red"))

## Plot the 4th graph
with(dat, {
  plot(Datetime, Global_reactive_power, type = "n",
       xlab = NULL, ylab = "Voltage")
  lines(Datetime, Global_reactive_power, col = "black")
})

dev.off()