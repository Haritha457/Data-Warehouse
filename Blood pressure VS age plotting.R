# load the diabetes dataset
data <- read.csv("diabetes.csv")

# create a scatterplot of blood pressure vs age
library(ggplot2)
ggplot(data, aes(x=Age, y=BloodPressure)) + 
  geom_point() +
  ggtitle("Blood Pressure vs Age")

# create a bar chart of age group vs mean blood pressure
data$AgeGroup <- cut(data$Age, breaks=c(20, 30, 40, 50, 60, 70, 80))
age_group_bp <- aggregate(data$BloodPressure, by=list(data$AgeGroup), mean)
names(age_group_bp) <- c("AgeGroup", "MeanBP")

library(ggplot2)
ggplot(age_group_bp, aes(x=AgeGroup, y=MeanBP)) + 
  geom_bar(stat="identity") +
  ggtitle("Age Group vs Mean Blood Pressure")
