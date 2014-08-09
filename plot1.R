## Read the data
source("read.R")
dat <- readData()

## Plot the histogram
png(filename = "plot1.png", width = 480, height = 480)
hist(dat$Global_active_power,
     xlab = "Global Active Power (killowatts)",
     main = "Global Active Power", col = "red")
dev.off()