library(Tmisc)
data(quartet)
print(quartet)

# Data summaries are same
print(quartet %>%
    group_by(set) %>%
    summarize(mean(x), sd(x), mean(y), sd(y), cor(x,y)))

View(ggplot(quartet,aes(x,y)) + geom_point() + geom_smooth(method=lm,se=FALSE) + facet_wrap(~set))