setwd("E:/Univ/Info3/Modelare si simulare/")
mytable=read.table("birdflu.txt",header=TRUE)
print(mytable)

#number of bird flu cases in 2003
print(mytable[1,2:16])

#total number of bird flu cases in 2003
sum(mytable[1,2:16])

#total number of bird flu cases in 2005
sum(mytable[3,2:16])


#country with max nr of bird flu cases
print(max(apply(mytable[,2:16],2,sum)))

#country with min nr of bird flu cases
print(min(apply(mytable[,2:16],2,sum)))

#the total number of cases per year
print(apply(mytable[,2:16],1,sum))

#the total number of cases per year
print(apply(mytable[,2:16],2,sum))

