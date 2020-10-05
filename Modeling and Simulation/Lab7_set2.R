setwd("E:/Univ/Info3/Modelare si simulare/")
mlm=read.table("mlm.txt",header=TRUE)
training=head(mlm,18)
test=tail(mlm,5)
mlm=lm(Y~X1+X2+X3+X4,data=mlm)
predict=predict(mlm,test)
print(test$Y)
print(predict)

#Multiple Coefficient of Determination
summary(mlm)$r.squared

#Adjusted Coefficient of Determination
summary(mlm)$adj.r.squared

#Significance Test for MLR
summary(mlm)

#Confidence Interval for MLR
predict(mlm, test, interval="confidence")

#Prediction Interval for MLR
predict(mlm, test, interval="predict")