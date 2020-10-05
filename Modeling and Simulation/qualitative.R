#qualitative data
library(MASS)
painters
school=painters$School
#frequency distribution of qualitative data
school.freq=table(school)
cbind(school.freq)
#ex1
composition=painters$Composition
composition.freq=table(composition)
cbind(composition.freq)
#Relative frequency
school.relfreq=school.freq/nrow(painters)
old=options(digits=1)
school.relfreq
options(old)
#Bar Graph
colors = c("red", "yellow", "green", "violet", 
           "orange", "blue", "pink", "cyan")
barplot(school.freq,col=colors)
#Pie chart
pie(school.freq)
#pie(school.freq,col=colors)
#Category Statistics
c_school=school=="C"
c_painters=painters[c_school,]
print(c_painters)
cbind(tapply(painters$Composition, painters$School, mean) )
