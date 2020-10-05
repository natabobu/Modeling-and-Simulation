setwd("E:/Univ/Info3/Modelare si simulare/")
temp=read.table("temp.txt",header=TRUE)
print(temp)

#temperatura medie per luna
tapply(temp$Temperature, temp$Month,mean,na.rm = TRUE)

#deviatia standart
sd(temp$Temperature,na.rm=TRUE)

#observations per month
table(temp$Month)

#observations per station
table(temp$Station)

#observation per year
table(temp$Year)

#each station per year
table(temp$Year, temp$Station)

#each month per year
table(temp$Year, temp$Month)

