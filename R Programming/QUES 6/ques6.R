# Load the iris dataset
data(iris)

# Display summary statistics for all variables
print(summary(iris))

# Create a subset of iris data for setosa species
setosa <- subset(iris, Species == "setosa")

# Plot a scatter plot for Sepal length and Sepal width for setosa species
plot(setosa$Sepal.Length, setosa$Sepal.Width, 
     main = "Sepal Length vs Sepal Width for Setosa Species", 
     xlab = "Sepal Length", ylab = "Sepal Width")
print("Scatter plot created for Sepal length and Sepal width for setosa species.")
# Add main title and axis labels to the scatter plot
title(main = "Sepal Length vs Sepal Width for Setosa Species", xlab = "Sepal Length", ylab = "Sepal Width")
print("Main title and axis labels added to the scatter plot.")

# Plot a histogram for the variable Petal.length
hist(iris$Petal.Length, main = "Histogram of Petal Length", xlab = "Petal Length")
print("Histogram created for the variable Petal.length.")

# Create a subset of iris data for versicolor species
versicolor <- subset(iris, Species == "versicolor")

# Create a boxplot for Petal width of Species=versicolor
boxplot(versicolor$Petal.Width, main = "Boxplot of Petal Width for Versicolor Species", 
        xlab = "Versicolor Species", ylab = "Petal Width")
print("Boxplot created for Petal width of Species=versicolor.")

# Combine the scatter plot, histogram, and boxplot in one figure
par(mfrow = c(2,2))

# Display the scatter plot
plot(setosa$Sepal.Length, setosa$Sepal.Width, 
     main = "Sepal Length vs Sepal Width for Setosa Species", 
     xlab = "Sepal Length", ylab = "Sepal Width")
title(main = "Sepal Length vs Sepal Width for Setosa Species", xlab = "Sepal Length", ylab = "Sepal Width")
print("Scatter plot added to the combined figure.")

# Display the histogram
hist(iris$Petal.Length, main = "Histogram of Petal Length", xlab = "Petal Length")
print("Histogram added to the combined figure.")

# Display the boxplot
boxplot(versicolor$Petal.Width, main = "Boxplot of Petal Width for Versicolor Species", 
        xlab = "Versicolor Species", ylab = "Petal Width")
print("Boxplot added to the combined figure.")

