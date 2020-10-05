#Quantitative
head(faithful)
#frequency distribution of quantitative data
duration=faithful$eruptions
range(duration)
breaks = seq(1.5, 5.5, by=0.5)
breaks
duration.cut = cut(duration, breaks, right=FALSE)
duration.freq = table(duration.cut)
hist(duration,right=FALSE)
