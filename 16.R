mydata <- read.csv("airquality.csv", header=TRUE, sep=",")
mydata

dim(mydata)

lapply(mydata, class)

is.na(mydata)

mydata$Ozone[is.na(mydata$Ozone)] <- mean(mydata$Ozone, na.rm = TRUE)
mydata

x <- na.omit(mydata)
x