asteptare=faithful$waiting
durata=faithful$eruptions
#ex1 distributia frecventelor pentru perioadele de asteptare intre eruptii
#range(faithful$waiting)
breaks=seq(40,100,by=10)
waiting.cut=cut(asteptare,breaks,right=FALSE)
waiting.freq=table(waiting.cut)
cbind(waiting.freq)

#ex1 var2
#waiting.freq=table(faithful$waiting)
#cbind(waiting.freq)

#ex2  intervalul cu cele mai multe eruptii
maxname=names(waiting.freq)[which(waiting.freq==max(waiting.freq))]
sprintf("%s=%d cazuri",maxname,max(waiting.freq))

#ex3 graficul histograma a duratei de asteptare
hist(asteptare,right=FALSE,ylab="Frecventa",xlab="durata de asteptare")

#ex4 frecventa relativa a duratei de asteptare
old = options(digits=1)
waiting.relfreq=waiting.freq/nrow(faithful)
cbind(waiting.relfreq)
options(old)

#ex5 frecventa cumulata a duratei de asteptare
waiting.cumfreq=cumsum(waiting.freq)
cbind(waiting.cumfreq)

#ex6 graficul frecventelor cumulate
cumfreq0 = c(0, cumsum(waiting.freq))
plot(breaks, cumfreq0,
     main="Frecventa cumulata",
     ylab="Frecventa",
     xlab="Interval",
     col="magenta")
lines(breaks, cumfreq0,col="blue") 

#ex7 Stem-and-leaf a duratei de asteptare
stem(asteptare)

#ex8 Scatter-plot a duratei de asteptare
plot(durata,asteptare, xlab="Durata eruptiilor", ylab="Durata de asteptare",col="green")

#ex9 media, mediana, dispersia, deviatia standard, coeficientul de aplatizare si coeficientul de asimetrie pt faithful

#media eruptions
mean(durata)
#media waiting
mean(asteptare)

#mediana eruptions
median(durata)
#mediana waitings
median(asteptare)

#dispersia eruptions
var(durata)
#dispersia waitings
var(asteptare)

#deviatia standard eruptions
sd(durata)
#deviatia standard waitings
sd(asteptare)

install.packages("e1071")
library(e1071)
#coeficientul de aplatizare eruptions
kurtosis(durata)
#coeficientul de aplatizare waiting
kurtosis(asteptare)

#coeficientul de asimetrie eruptions
skewness(durata)
#coeficientul de asimetrie waiting
skewness(asteptare)

#ex10 valorile aberante din setul de date, coloane Waiting
IQR(asteptare)
sd(asteptare)

#ex11 graficul de tip box-plot
#graficul box-plot eruptions
boxplot(durata, horizontal=TRUE,main="Durata",col="yellow")
#graficul box-plot waiting
boxplot(asteptare, horizontal=TRUE,main="Asteptare",col="blue")

#ex12 coeficientul de corelatie
cor(durata, asteptare)

summary(durata)