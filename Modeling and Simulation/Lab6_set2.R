d=cars
speed=d$speed
dist=d$dist
#Ex1
plot(speed,dist,col="purple",xlab="Viteza",ylab="Distanta")
abline(lm(dist ~ speed),col="yellow")
boxplot(speed,horizontal = TRUE,col="pink",main="Viteza")
boxplot(dist,horizontal = TRUE,col="cyan",main="Distanta")
ddens=density(dist)
plot(ddens,col="blue",main="Densitate distanta")
dspeed=density(speed)
plot(dspeed,col="blue",main="Densitate viteza")
#Ex2
cor(dist,speed)
#Ex3
cars.lm=lm(dist~speed,data=d)
summary(cars.lm)
#Ex4
AIC(cars.lm)
BIC(cars.lm)
#Ex5
training=head(cars,40)
test=tail(cars,10)
tr.lm=lm(dist~speed,training)
pred=predict(tr.lm,test)
cor(pred,test)