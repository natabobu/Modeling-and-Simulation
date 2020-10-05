library(Kendall)
data(PrecipGL)
par(mfrow=c(2,2))
plot(PrecipGL)
hist(PrecipGL)
acf(PrecipGL)
boxplot(PrecipGL)
MannKendall(PrecipGL)
library(boot)
data(manaus)
manaus
SeasonalMannKendall(manaus)

library(trend)
mk.test(manaus)

sens.slope(manaus)


births <- scan("http://robjhyndman.com/tsdldata/data/nybirths.dat")
births

birthstimeseries <- ts(births, frequency=12, start=c(1946,1))
birthstimeseries

souvenir <- scan("http://robjhyndman.com/tsdldata/data/fancy.dat")
souvenirtimeseries <- ts(souvenir, frequency=12, start=c(1987,1))
souvenirtimeseries

plot(births)
plot.ts(souvenirtimeseries)

logsouvenirtimeseries <- log(souvenirtimeseries)
plot.ts(logsouvenirtimeseries)

library("TTR")
souvenirtimeseriesSMA3 <- SMA(souvenirtimeseries,n=3)
plot.ts(souvenirtimeseriesSMA3)
souvenirtimeseriesSMA8 <- SMA(souvenirtimeseries,n=8)
plot.ts(souvenirtimeseriesSMA8)

birthstimeseriescomponents <- decompose(birthstimeseries)
birthstimeseriescomponents$seasonal # da componenta sezoniera
plot(birthstimeseriescomponents)
