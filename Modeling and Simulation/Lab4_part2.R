set.seed(1)
#Ex. 1
#a)
valori_aleatoare=runif(30, min=1, max=100)
valori_aleatoare=ceiling(valori_aleatoare)
valori_aleatoare=round(valori_aleatoare)
print(valori_aleatoare)
#b)
hist(valori_aleatoare)
#c)
val_al=runif(300,min=1,max=1000)
val_al=ceiling(val_al)
val_al=round(val_al)
hist(val_al)
#d)
val_al1=runif(3000,min=1,max=10000)
val_al1=ceiling(val_al1)
val_al1=round(val_al1)
hist(val_al1)
#Ex. 2
rbinom(1000,10,0.48)
#Ex. 3 Simularea de valori distribuite normal
#a)
inaltimi=rnorm(100,1.7,0.1)
print(inaltimi)
#b)
summary(inaltimi)
#c)
qnorm(.90,1.7,1)
#d)
pnorm(1.6, mean=1.7, sd=0.1, lower.tail=FALSE) 

if (!'MASS' %in% installed.packages()) install.packages('MASS')
library(MASS)
#e)
set.seed(1)
population <- mvrnorm(1000, mu = c(1.70, 60),Sigma = matrix(c(.1,3.1,3.1,100), nrow = 2))
print(population)
#f)
pnorm(1.6, mean=1.7, sd=0.1, lower.tail=FALSE) 
#g)

#Ex. 4
#a)
inaltimi=rnorm(100,1.7,0.1)
print(inaltimi)
#b)
inaltimi=rnorm(10000,1.7,0.1)
density(inaltimi)
plot(density(inaltimi),main="Densitate de probabilitate",col="green")
#Ex. 5)
#a)
#100
hist(rnorm(100,0,1),main="100 valori repartizate normal",col="purple")
#500
hist(rnorm(500,0,1),main="500 valori repartizate normal",col="blue")
#1000
hist(rnorm(1000,0,1),main="1000 valori repartizate normal",col="green")
#5000
hist(rnorm(5000,0,1),main="5000 valori repartizate normal",col="yellow")
#10000
hist(rnorm(10000,0,1),main="10000 valori repartizate normal",col="orange")
#100000
hist(rnorm(100000,0,1),main="100000 valori repartizate normal",col="red")
#1000000
hist(rnorm(1000000,0,1),main="1000000 valori repartizate normal",col="pink")