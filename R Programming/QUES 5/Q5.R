install.packages("ggplot2")
library(ggplot2)
# a. Read the first ten days of rainfall amounts from the CSV file.
rainfall <- read.csv("rainfall in india 1901-2015.csv")
first_ten_days <- rainfall[1:10,]
first_ten_days

# b. Create a subset of the rainfall data where rain is larger than 20.
rain_above_20 <- subset(rainfall, rainfall > 20)
rain_above_20

# c. Find the mean rainfall for days where the rainfall was at least 4.
rain_above_4 <- subset(rainfall, rainfall >= 4)
mean_rain_above_4 <- mean(as.numeric(rain_above_4$rainfall), na.rm=TRUE)
mean_rain_above_4

# d. Subset the vector where rainfall is either exactly zero, or exactly 0.6.
rain_0_or_0.6 <- subset(rainfall, rainfall == 0 | rainfall == 0.6)

# e. Use a suitable plot to compare the rainfall of each day of every month, and to compare the summarized rainfall of every month.
library(ggplot2)
rainfall$Date <- as.Date(rainfall$Date, format="%m/%d/%Y") # Convert Date to Date format
rainfall$month <- format(rainfall$Date, format="%m") # Extract month from Date
rainfall$day <- format(rainfall$Date, format="%d") # Extract day from Date

# Plot rainfall of each day of every month
ggplot(rainfall, aes(x=day, y=rainfall, group=month)) + geom_line() + labs(x="Day", y="Rainfall", title="Rainfall of Each Day of Every Month")

# Summarize rainfall of every month
monthly_rainfall <- aggregate(rain ~ month, data=rainfall, FUN=sum)
ggplot(monthly_rainfall, aes(x=month, y=rain)) + geom_bar(stat="identity") + labs(x="Month", y="Rainfall", title="Summarized Rainfall of Every Month")
