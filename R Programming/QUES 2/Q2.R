#Use the airquality dataset and write R commands to do the following:
  
#a. Display the structure of the dataset.
str(airquality)
#b. Display the number of observations and variables in this dataset.
dim(airquality)
#c. Display the count of complete rows.
complete_rows <- na.omit(airquality)
nrow(complete_rows)
#d. Display the data for the observation having Temp between 70 and 80.
subset(airquality, Temp >= 70 & Temp <= 80)
#e. Display the count of observations where Month = 5.
nrow(subset(airquality, Month == 5))
#f. Display first 10 rows of the dataset.
head(airquality, 10)
#g. Display summary of Wind variable.
summary(airquality$Wind)
#h. Display the complete dataset sorted as per the decreasing order of Temp variable.
airquality[order(airquality$Temp, decreasing = TRUE),]
#i. Add a new observation to this dataset.
new_observation <- c(Ozone = 40, Solar.R = 200, Wind = 10, Temp = 70, Month = 6, Day = 1)
airquality <- rbind(airquality, new_observation)
airquality

