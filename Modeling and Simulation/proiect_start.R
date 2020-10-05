setwd("E:OneDrive - Universitatea "OVIDIUS"/Univ/Info3/Modelare si simulare/ProiectMS/")
Happiness= read.csv("happy2019.csv")
print(Happiness)
str(Happiness)

Happiness=Happiness[c(3:9)]

library(e1071)
summary(Happiness$Score)
hist(Happiness$Score,main="Scorul de fericire",xlab="Scorul",ylab="Frecven??a",col=rgb(0.97,0.92,0.91))
kurtosis(Happiness$Score)
skewness(Happiness$Score)

library(fBasics)
ksnormTest(Happiness$Score,title = "Kolmogorov-Smirnov",description = NULL)


summary(Happiness$GDP.capita)
boxplot(Happiness$GDP.capita,horizontal = TRUE,main="PIB/capita",col=rgb(0.58,0.65,0.81))

summary(Happiness$Social.support)
boxplot(Happiness$Social.support,horizontal = TRUE,main="Suportul social",col=rgb(0.79,0.89,0.97))

summary(Happiness$Life.expectancy)
boxplot(Happiness$Life.expectancy,horizontal = TRUE,main="Speran??a de via??a",col=rgb(0.86,0.92,0.71))

summary(Happiness$Freedom.of.choice)
boxplot(Happiness$Freedom.of.choice,horizontal = TRUE,main="Libertatea alegerii",col=rgb(0.97,0.92,0.91))

summary(Happiness$Generosity)
boxplot(Happiness$Generosity,horizontal = TRUE,main="Generozitatea",col=rgb(0.98,0.73,0.76))

summary(Happiness$Corruption)
boxplot(Happiness$Corruption,horizontal = TRUE,main="Corup??ia",col=rgb(0.83,0.80,0.91))