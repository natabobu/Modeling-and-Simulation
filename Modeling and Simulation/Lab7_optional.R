setwd("E:/Univ/Info3/Modelare si simulare/")
cars=read.csv("vehicles.csv")
#ex1
plot(cars$sales,col="pink")
plot(cars$sales,
     type="n",
     ylab = "Vanzari",
     xlab = "Perioada",)
lines(cars$sales,col="pink")

#ex2
cars$trend <- seq(1:nrow(cars))
cars$income_lag = c(NA, cars$income[1:nrow(cars)-1])
cars$unemp_lag = c(NA, cars$unemp[1:nrow(cars)-1])
cars$rate_lag = c(NA, cars$rate[1:nrow(cars)-1])

#ex3
regression_income = lm(sales ~ income, data = cars)
regression_income_stdres=rstandard(regression_income)
qqnorm(regression_income_stdres,col="purple",main="Sales~Income")

regression_rate =lm(sales~rate,data=cars)
regression_rate_stdres=rstandard(regression_rate)
qqnorm(regression_rate_stdres, col="blue",main="Sales~Rate")

regression_unemp =lm(sales~unemp,data=cars)
regression_unemp_stdres=rstandard(regression_unemp)
qqnorm(regression_unemp_stdres,col="yellow",main="Sales~Unemp")

regression_trend=lm(sales~trend,data=cars)
regression_trend_stdres=rstandard(regression_trend)
qqnorm(regression_trend_stdres,col="green",main="Sales~Trens")