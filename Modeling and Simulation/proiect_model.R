
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

par(mfrow=c(2,2))
plot(happy_mlm2)
car::vif(happy_mlm2)

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