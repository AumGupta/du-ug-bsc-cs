#a. Read the CSV into a data frame object.
setwd("C:/") #replace with your working directory
mydata <- read.csv("toy_dataset.csv")

#b. Attach the data frame to the environment.
attach(mydata)

#c. Count the number of rows with City = New York City.
sum(City == "New York City")

#d. Display rows that have top 5 income values.
top5 <- head(mydata[order(-Income),], 5)
top5

#e. Find out the number of rows with income greater than average income.
avg_income <- mean(Income)
sum(Income > avg_income)

#f. Find the highest salary for the female population.
max(Income[Gender == "Female"])

#g. Randomly select 10 rows from the given dataset.
rand10 <- mydata[sample(nrow(mydata), 10),]
rand10

#h. Detach the data frame object from the environment.
detach(mydata)

