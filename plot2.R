## Read the data
source("read.R")
dat <- readData()

## Plot the histogram
png(filename = "plot2.png", width = 480, height = 480)
with(dat, {
  plot(Datetime, Global_active_power,
       xlab = NULL, ylab = "Global Active Power (killowatts)",
       col = "white")
  lines(Datetime, Global_active_power,
        col = "black")
})
dev.off()