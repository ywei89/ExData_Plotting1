## Read the data
source("read.R")
dat <- readData()

## Plot the histogram
png(filename = "plot3.png", width = 480, height = 480)
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
legend("topright", lty = 1,
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "blue", "red"))
dev.off()