readData <- function() {
  format <- "%Y-%m-%d %H:%M"
  
  a <- as.POSIXct(strftime("2006-12-16 17:24", format))
  b <- as.POSIXct(strftime("2007-02-01 00:00", format))
  c <- as.POSIXct(strftime("2007-02-03 00:00", format))
  
  diff.a <- as.numeric(difftime(b, a, units = c("mins"))) + 1
  diff.b <- as.numeric(difftime(c, b, units = c("mins")))
  
  headerRow <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, nrows = 1)
  dataRows <- read.table("household_power_consumption.txt", sep=";", skip = diff.a, nrows = diff.b)
  
  names(dataRows) <- names(headerRow)
  dataRows <- transform(dataRows,
                        Datetime = as.POSIXct(strptime(paste(Date, Time, sep = " "),
                                                       "%d/%m/%Y %H:%M:%S")))
  dataRows$Date <- NULL
  dataRows$Time <- NULL
  dataRows
}