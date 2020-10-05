library(MASS)
library(dplyr)
train=merge(data.frame(Pima.tr),data.frame(Pima.tr2))
test=data.frame(Pima.te)
train=train %>% mutate(type=ifelse(type=="NO",0,1))
test=test %>% mutate(type=ifelse(type=="NO",0,1))
pairs(subset(train, select = -c(type)), col = as.factor(train$type))
train.glm=glm(formula=type ~ bmi+age, data=train, family=binomial)
summary(train.glm)

newdata1 <- with(test,data.frame(age=35,bmi=32))
newdata1$rankP <- predict(train.glm, newdata = newdata1, type = "response")
print(newdata1)

newdata2 <- data.frame(age=35,bmi=22)
predict(train.glm, newdata = newdata2, type = "response")
cm1 <- table(train$type[!is.na(train$bmi)], predict(train.glm, type = "response") >= 0.5)
print(cm1)

train2.glm=glm(formula=type ~ bmi+age+(age^2)+npreg, data=train, family=binomial)
summary(train2.glm)

newdata2 <- data.frame(age=39,bmi=26,npreg=2)
predict(train.glm, newdata = newdata2, type = "response")

newdata2 <- data.frame(age=39,bmi=66,npreg=2)
predict(train.glm, newdata = newdata2, type = "response")
