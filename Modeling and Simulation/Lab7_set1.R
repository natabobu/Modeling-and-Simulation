#Estimated Multiple Regression Equation
stackloss.lm = lm(stack.loss ~ Air.Flow + Water.Temp + Acid.Conc., data=stackloss)
summary(stackloss.lm)
newdata = data.frame(Air.Flow=72, Water.Temp=20, Acid.Conc.=85)
predict(stackloss.lm, newdata)

#Multiple Coefficient of Determination
summary(stackloss.lm)$r.squared

#Adjusted Coefficient of Determination
summary(stackloss.lm)$adj.r.squared

#Significance Test for MLR
summary(stackloss.lm) 

#Confidence Interval for MLR
predict(stackloss.lm, newdata, interval="confidence")

#Prediction Interval for MLR
predict(stackloss.lm, newdata, interval="predict")
