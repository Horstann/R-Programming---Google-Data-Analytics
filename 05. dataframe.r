library(ggplot2)
data("diamonds")

View(diamonds)
# Get head of data
head(diamonds)
# Get structure of data
str(diamonds)
# Get column names of data
colnames(diamonds)
# Get summary of data
glimpse(diamonds)

# Manipulate data with mutate()
# add a new column "carat_2"
diamonds <- mutate(diamonds, carat_2 = carat * 100)
View(diamonds)

# Create your own dataframe called 'people'
library(tidyverse)
id <- c(1:10)
names <- c("Jamie", "Ali", "Romano", "Celeste")
age <- c(89, 2, 30, 19)
people <- data.frame(id, names, age)
View(people)

# View() data but only top 10 rows
print(as_tibble(diamonds))