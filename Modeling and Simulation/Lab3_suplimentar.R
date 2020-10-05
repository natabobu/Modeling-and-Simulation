setwd("E:/Univ/Info3/Modelare si simulare/")
titanic=read.csv("trainTitanic.csv")
print(titanic)

library(MASS)
#T1 Distributia pe clase a pasagerilor
clasa=titanic$Pclass
clasa.freq=table(clasa)
barplot(clasa.freq,col="yellow",main="Distributia pe clase",ylab="Nr. pasageri",xlab="Clasa")

#T2 Distributia pe sexe a pasagerilor
sex=titanic$Sex
sex.freq=table(sex)
barplot(sex.freq,col="green",main="Distributia pe sexe",ylab="Nr. pasagerilor",xlab="Sex")

#T3 
#Media de varsta a femeilor de pe vas
m_femei=sex=="female"
f_femei=titanic[m_femei,]
mean(f_femei$Age,na.rm = TRUE)

#Media de varsta a barbatilor de pe vas
m_barbati=sex=="male"
b_barbati=titanic[m_barbati,]
mean(b_barbati$Age,na.rm = TRUE)

#Deviatia standard a varstei femeilor
sd(f_femei$Age,na.rm=TRUE)

#Deviatia standard a varstei barabatilor
sd(b_barbati$Age,na.rm=TRUE)

#T4 Distributia pe sexe a supravietuitorilor
s_supravietuitori=titanic$Survived=="1"
t_survived=titanic[s_supravietuitori,]
survived.freq=table(t_survived$Sex)
barplot(survived.freq,col="purple",main="Distributia pe sexe a supravietuitorilor",ylab="Nr. total de supravietuitori",xlab="Sex")
