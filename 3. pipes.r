data("ToothGrowth")
View(ToothGrowth)

# Filter data for only rows where dose=0.5
filtered_tg <- filter(ToothGrowth, dose==0.5)
# Arrange data by len
arranged_tg <- arrange(filtered_tg, len) # to arrange in desc, just use "-len"

# Nest functions
arranged_tg <- arrange(filter(ToothGrowth, dose==0.5), len)

# functions in a Pipe
arranged_tg <- ToothGrowth %>%
    filter(dose==0.5) %>%
    arrange(len)
View(arranged_tg)

summarized_tg <- ToothGrowth %>%
    filter(dose==0.5) %>%
    group_by(supp) %>%
    summarize(mean_len = mean(len, na.rm=T),.group="drop")
View(summarized_tg)

