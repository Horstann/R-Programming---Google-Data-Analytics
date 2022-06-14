library("here")
library("skimr")
library("janitor")
library("dplyr")
library("palmerpenguins")

print(skim_without_charts(penguins)) # data summary - similar to glimpse()

# select()
View(select(penguins, species)) # view only 'species'
View(select(penguins, -species)) # exclude 'species'
penguins %>% select(species)

# rename() - rename column names
penguins %>% rename(island_new=island)
rename_with(penguins, toupper) # make columns uppercase
rename_with(penguins, tolower) # make columns lowercase

# clean_names() - ensure column names are unique and consistent
clean_names(penguins)

# drop_na() - drop all rows with null
penguins <- drop_na(penguins)