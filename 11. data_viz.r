library(ggplot2)
library(palmerpenguins)
library(tidyverse)

print(penguins)
penguins <- drop_na(penguins)

# Data visulisation with ggplot2
View(ggplot(data=penguins) +
    geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g)) +
    labs(title="Palmer Penguins: Body Mass vs. Flipper Length",
        subtitle="Sample of 3 Penguin Species",
        caption="Data collected by Dr. Kristen Gorman",
        x="Flipper Length (mm)", y="Body Mass (g)") +
    annotate("text", x=220, y=3500,
        label=paste0("The heavist penguin is ", max(penguins$body_mass_g), "g!"),
        color="purple", fontface="bold", size=4.5, angle=25))

# Highlight key points in data with aes()
# - assign diff color, shape, size to each species
(ggplot(data=penguins) + geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color=species, shape=species, size=species)))
# - if it's a dense plot with many points, it gets harder to assign each class to diff colors
# - 1 solution is to keep points in black & white, and vary their transparency
(ggplot(data=penguins) + geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, alpha=species)))

# Change apperance of overall plot without affecting specific variables
(ggplot(data=penguins) + geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g), color="purple"))
# geoms - geometrical object representing data
# - geom_point() creates scatterplots
# - geom_bar() creates bar charts
# - geom_line() creates line charts
# - geom_smooth() shows trend lines
# - geom_jitter() adds tiny variations to points in a scatter plot

# you can combine different geoms
(ggplot(data=penguins) +
    geom_smooth(mapping=aes(x=flipper_length_mm, y=body_mass_g, linetype=species, color=species)) + # linetype creates 3 different lines for each species
    geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color=species)))

# 2 types of smoothing
# a) Loess - for plots < 1000 points
(ggplot(data=penguins, aes(x=flipper_length_mm, y=body_mass_g)) +
    geom_point() +
    geom_smooth(method="loess"))
# b) Generalised Additive Model (Gam) - otherwise
(ggplot(data=penguins, aes(x=flipper_length_mm, y=body_mass_g)) +
    geom_point() +
    geom_smooth(method="gam", formula = y ~s(x)))

# for geom_bar(), if y-axis unassigned, it will take the count of x-axis
(ggplot(data=penguins) +
    geom_bar(mapping=aes(x=species, fill=species))) # 'fill' fills each bar with color
# if we assign 'fill to another variable', stacked bar chart is produced
(ggplot(data=penguins) +
    geom_bar(mapping=aes(x=species, fill=island)))

# facet_wrap() - shows separate plots based on 1 variable
(ggplot(data=penguins, aes(x=flipper_length_mm, y=body_mass_g)) +
    geom_point(aes(color=species)) +
    facet_wrap(~species))
# facet_grid() - shows grid of plots based on 2 variables
(ggplot(data=penguins, aes(x=flipper_length_mm, y=body_mass_g)) +
    geom_point(aes(color=species)) +
    facet_grid(sex~species))

# Save plots
ggsave("folder/3 Penguin Species.png")