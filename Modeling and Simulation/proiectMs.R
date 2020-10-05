setwd("E:OneDrive - Universitatea "OVIDIUS"/Univ/Info3/Modelare si simulare/ProiectMS/")
Happiness= read.csv("happy2019.csv")
print(Happiness)
str(Happiness)

Happiness=Happiness[c(3:9)]
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


library(corrplot)
happy = cor(Happiness[c(3:9)])
corrplot(happy, method = 'number')
corrplot(happy, method = 'circle')

happy=Happiness[c(3:9)]
library(ggplot2)
ggplot(happy, aes(x = Life.expectancy, y = Score)) + 
  geom_point(size = 3, alpha = 0.8,col='pink') +  
  geom_smooth(method = "lm", fullrange = TRUE) +
  theme_bw() + labs(title = "Fericire~Speran??a de via??a")

ggplot(happy, aes(x = GDP.capita, y = Score)) + 
  geom_point(size = 3, alpha = 0.8,col='purple') +  
  geom_smooth(method = "lm", fullrange = TRUE) +
  theme_bw() + labs(title = "Fericire~PIB")

ggplot(happy, aes(x = Social.support, y = Score)) + 
  geom_point(size = 3, alpha = 0.8,col='blue') +  
  geom_smooth(method = "lm", fullrange = TRUE) +
  theme_bw() + labs(title = "Fericire~Suportul social")

ggplot(happy, aes(x = Freedom.of.choice, y = Score)) + 
  geom_point(size = 3, alpha = 0.8,col='magenta') +  
  geom_smooth(method = "lm", fullrange = TRUE) +
  theme_bw() + labs(title = "Fericire~Libertatea alegerii")

ggplot(happy, aes(x = Generosity, y = Score)) + 
  geom_point(size = 3, alpha = 0.8,col='yellow') +  
  geom_smooth(method = "lm", fullrange = TRUE) +
  theme_bw() + labs(title = "Fericire~Generozitate")

ggplot(happy, aes(x = Corruption, y = Score)) + 
  geom_point(size = 3, alpha = 0.8,col='green') +  
  geom_smooth(method = "lm", fullrange = TRUE) +
  theme_bw() + labs(title = "Fericire~Coruptie")

happy_mlm=lm(Score~GDP.capita+Social.support+Life.expectancy+Freedom.of.choice+Generosity+Corruption,data=happy)
summary(happy_mlm)

happy_mlm1=lm(Score~GDP.capita+Social.support+Life.expectancy+Freedom.of.choice,data=happy)
summary(happy_mlm1)

happy_mlm2=lm(Score~GDP.capita+Social.support+Life.expectancy+Freedom.of.choice+Corruption,data=happy)
summary(happy_mlm2)
aic1=AIC(happy_mlm)
aic2=AIC(happy_mlm1)
aic3=AIC(happy_mlm2)
print(aic1)
print(aic2)
print(aic3)

Training = head(happy, 124)
test = tail(happy, 32)
happy_mlm3=lm(Score~GDP.capita+Social.support+Life.expectancy+Freedom.of.choice+Corruption,data=training)
prediction=predict(happy_mlm3,test)

comparison=cbind(Real=test$Score,Predict=prediction)
print(comparison)
prediction_vs_actual= as.data.frame(cbind(Prediction = prediction, Actual = test$Score))

ggplot(prediction_vs_actual, aes(Actual, Prediction,col='pink')) +
  geom_point() +theme_light() +geom_abline() +
  labs(title = "Regresie liniara multipla", x = "Scorul real",
       y = "Scorul prezis")

newdata=data.frame(GDP.capita=1.35,Social.support=1.52, Life.expectancy=0.99,Freedom.of.choice=0.55,Corruption=0.11)
predict(happy_mlm2, newdata)