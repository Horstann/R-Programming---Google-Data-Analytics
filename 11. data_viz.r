library(ggplot2)
library(palmerpenguins)

print(penguins)

# Data visulisation with ggplot2
ggplot(data=penguins) + geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g))
# geom_point() creates scatterplots
# geom_bar() creates bar charts