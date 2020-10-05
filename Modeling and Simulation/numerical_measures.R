#Numerical Measures
median(duration)
quantile(duration)
quantile(duration, c(.32, .57, .98))
IQR(duration)#75%-25%
boxplot(duration, horizontal=TRUE)
var(duration)#variance
sd(duration)#standart deviation
waiting=faithful$waiting
cov(duration, waiting)#covariance
cor(duration, waiting) #corelatia
skewness(duration) 