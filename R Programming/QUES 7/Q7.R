#Create a tab-delimited file containing the data as shown in the table below and then read this file into a data frame.
file_path = "C:/Users/aaumg/OneDrive/Desktop/Q7data.txt"
data <- read.delim(file_path)
#Write an R script to do the following:

#a) For each year, display the country with maximum Beer consumption and minimum Wine consumption.
for (i in unique(data$Year)){
  subdata <- subset(data, (Year == i))
  print(paste(i,":"),quote = FALSE)
  print(paste("Country with maximum Beer consumption =",subset(subdata, Beer == max(subdata$Beer))[4]),quote = FALSE)
  print(paste("Country with minimum Wine consumption =",subset(subdata, Wine == min(subdata$Wine))[4]),quote = FALSE)
}

#b) Find the average alcohol consumption for each country.
for (i in unique(data$Country)){
  subdata <- subset(data, (Country == i))
  avg_alcohol_consumption <- mean(c(mean(subdata$Beer),mean(subdata$Wine),mean(subdata$Spirit)))
  print(paste("Average alcohol consumption of",i,"=",avg_alcohol_consumption),quote = FALSE)
}
#c) Find the Beer consumption for New Zealand for the year(s) when its spirit consumption was more than the mean spirit consumption.
nzdata <- subset(data, (Country == "NewZealand"))
nzspirit <- subset(nzdata, (Spirit>mean(nzdata$Spirit)))
print(paste(nzspirit$Year,"=",nzspirit$Beer))

#d) Find the average Beer consumption/Wine Consumption/Spirit consumption for each year.
for (i in unique(data$Year)){
  subdata <- subset(data, (Year == i))
  print(paste(i,":"),quote = FALSE)
  print(paste("Avg Beer Consumption =",mean(subdata$Beer)),quote = FALSE)
  print(paste("Avg Wine Consumption =",mean(subdata$Wine)),quote = FALSE)
  print(paste("Avg Spirit Consumption =",mean(subdata$Spirit)),quote = FALSE)
}

#e) Plot the mean Beer consumption/mean Wine consumption/mean Spirit consumption for each country using a suitable plot.
for (i in unique(data$Country)){
  subdata <- subset(data, (Country == i))
  print(paste(i,":"),quote = FALSE)
  barplot(c(mean(subdata$Beer),mean(subdata$Wine),mean(subdata$Spirit)), names.arg = c("Beer","Wine","Spirit"), xlab = "Alcohol", ylab = "Mean Consumption", main = "Country-wise Mean Alcohol Consumption", ylim = c(0,5.0))
}