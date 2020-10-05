setwd("E:/Univ/Info3/Modelare si simulare/")
install.packages("readxl")
library("readxl")
kills=read_excel("Amphibian_road_Kills.xls")
print(kills)

plot(kills$D.PARK,kills$TOT.N,
     main="Total number vs distance",
     ylab="Total nr of kills",
     xlab="Distance from park( m )",
     type="l",
     col="green")


plot(kills$D.PARK,kills$OLIVE,
     main="Total number vs olive trees",
     ylab="Total nr of kills",
     xlab="Distance from park( m )",
     type="l",
     col="purple")
