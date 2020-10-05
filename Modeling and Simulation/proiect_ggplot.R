library(corrplot)
happy = cor(Happiness[c(3:9)])
corrplot(happy, method = 'number')
corrplot(happy, method = 'circle')

happy=Happiness[c(3:9)]
library(ggplot2)

cor(Happiness$Score,Happiness$GDP.capita)
ggplot(happy, aes(x = GDP.capita, y = Score)) + 
  geom_point(size = 3, alpha = 0.8,col=rgb(0.58,0.65,0.81)) +  
  geom_smooth(method = "lm", fullrange = TRUE) +
  theme_bw() + labs(title = "Fericire~PIB")

cor(Happiness$Score,Happiness$Social.support)
ggplot(happy, aes(x = Social.support, y = Score)) + 
  geom_point(size = 3, alpha = 0.8,col=rgb(0.79,0.89,0.97)) +  
  geom_smooth(method = "lm", fullrange = TRUE) +
  theme_bw() + labs(title = "Fericire~Suportul social")

cor(Happiness$Score,Happiness$Life.expectancy)
ggplot(happy, aes(x = Life.expectancy, y = Score)) + 
  geom_point(size = 3, alpha = 0.8,col=rgb(0.86,0.92,0.71)) +  
  geom_smooth(method = "lm", fullrange = TRUE) +
  theme_bw() + labs(title = "Fericire~Speran??a de via??a")

cor(Happiness$Score,Happiness$Freedom.of.choice)
ggplot(happy, aes(x = Freedom.of.choice, y = Score)) + 
  geom_point(size = 3, alpha = 0.8,col='pink') +  
  geom_smooth(method = "lm", fullrange = TRUE) +
  theme_bw() + labs(title = "Fericire~Libertatea alegerii")

cor(Happiness$Score,Happiness$Generosity)
ggplot(happy, aes(x = Generosity, y = Score)) + 
  geom_point(size = 3, alpha = 0.8,col=rgb(1,0.7,0.7)) +  
  geom_smooth(method = "lm", fullrange = TRUE) +
  theme_bw() + labs(title = "Fericire~Generozitate")

cor(Happiness$Score,Happiness$Corruption)
ggplot(happy, aes(x = Corruption, y = Score)) + 
  geom_point(size = 3, alpha = 0.8,col=rgb(0.83,0.80,0.91)) +  
  geom_smooth(method = "lm", fullrange = TRUE) +
  theme_bw() + labs(title = "Fericire~Coruptie")
