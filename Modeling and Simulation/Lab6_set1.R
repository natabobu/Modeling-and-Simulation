#Estimated Simple Regression Equation
eruption.lm = lm(eruptions ~ waiting, data=faithful)
coeffs = coefficients(eruption.lm);
coeffs
waiting = 80# the waiting time 
duration = coeffs[1] + coeffs[2]*waiting 
duration
#alternative solution
newdata = data.frame(waiting=80) # wrap the parameter
predict(eruption.lm, newdata)    # apply predict

#Coefficient of Determination
eruption.lm = lm(eruptions ~ waiting, data=faithful)
summary(eruption.lm)$r.squared

#Significance Test for Linear Regression
eruption.lm = lm(eruptions ~ waiting, data=faithful)
summary(eruption.lm)

#Confidence Interval for Linear Regression
attach(faithful)
eruption.lm = lm(eruptions ~ waiting)
newdata = data.frame(waiting=80)
predict(eruption.lm, newdata, interval="confidence")
detach(faithful)     # clean up

#Prediction Interval for Linear Regression
attach(faithful)
eruption.lm = lm(eruptions ~ waiting)
newdata = data.frame(waiting=80)
predict(eruption.lm, newdata, interval="predict")
detach(faithful)

#Residual plot
eruption.lm = lm(eruptions ~ waiting, data=faithful)
eruption.res = resid(eruption.lm)
plot(faithful$waiting, eruption.res, ylab="Residuals", xlab="Waiting Time", main="Old Faithful Eruptions",col="pink") 
abline(0, 0)

#Standardized Residual
eruption.lm = lm(eruptions ~ waiting, data=faithful) 
eruption.stdres = rstandard(eruption.lm)
plot(faithful$waiting, eruption.stdres, ylab="Standardized Residuals", xlab="Waiting Time", main="Old Faithful Eruptions",col="blue") 
abline(0, 0) 

#Normal Probability Plot of Residuals
eruption.lm = lm(eruptions ~ waiting, data=faithful)
eruption.stdres = rstandard(eruption.lm)
qqnorm(eruption.stdres, ylab="Standardized Residuals", xlab="Normal Scores", main="Old Faithful Eruptions",col="green") 
qqline(eruption.stdres)