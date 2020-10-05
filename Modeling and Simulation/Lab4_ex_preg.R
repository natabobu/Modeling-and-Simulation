#Binomial distribution
# Find the probability of having four or less correct answers
#if a student attempts to answer every question at random (12 questions quiz)

#the probability of having exactly 4 correct answers by random attempts as follows.
dbinom(4, size=12, prob=0.2)

#the probability of having four or less correct answers by random attempts
dbinom(0, size=12, prob=0.2) + dbinom(1, size=12, prob=0.2) + dbinom(2, size=12, prob=0.2) + 
dbinom(3, size=12, prob=0.2) + 
dbinom(4, size=12, prob=0.2) 

#Alternatively, we can use the cumulative probability function for binomial distribution pbinom.
pbinom(4, size=12, prob=0.2)

#Poisson Distribution
#Problem:
#If there are 12 cars crossing a bridge per minute on average, 
#find the probability of having 17 or more cars crossing the bridge in a particular minute.
#Solution
#The probability of having 16 or less cars crossing the bridge in a particular minute is given by the function ppois.
ppois(16, lambda=12)   # lower tail
#Hence the probability of having seventeen or more cars crossing the bridge in a minute is in the upper tail of the probability density function
ppois(16, lambda=12, lower=FALSE)   # upper tail 

#Continuous Uniform Distribution
#Problem
#Select ten random numbers between one and three
#Solution:
#We apply the generation function runif of the uniform distribution to generate ten random numbers between one and three.
runif(10, min=1, max=3) 

#Exponential distribution
#Problem
#Suppose the mean checkout time of a supermarket cashier is three minutes. Find the probability of a customer checkout being completed by the cashier in less than two minutes.
#Solution
#The checkout processing rate is equals to one divided by the mean checkout completion time. 
#Hence the processing rate is 1/3 checkouts per minute. 
#We then apply the function pexp of the exponential distribution with rate=1/3.
pexp(2, rate=1/3) 

#Normal distribution
#Problem
#Assume that the test scores of a college entrance exam fits a normal distribution.
#Furthermore, the mean test score is 72, and the standard deviation is 15.2. 
#What is the percentage of students scoring 84 or more in the exam?
pnorm(84, mean=72, sd=15.2, lower.tail=FALSE) 

#Chi-squared Distribution
#Problem
#Find the 95th percentile of the Chi-Squared distribution with 7 degrees of freedom.
#Solution
#We apply the quantile function qchisq of the Chi-Squared distribution against the decimal values 0.95.
qchisq(.95, df=7)

#Student t distribution
#Problem
#Find the 2.5th and 97.5th percentiles of the Student t distribution with 5 degrees of freedom.
#Solution
#We apply the quantile function qt of the Student t distribution against the decimal values 0.025 and 0.975.
qt(c(.025, .975), df=5)

#F Distribution
#Problem
#Find the 95th percentile of the F distribution with (5, 2) degrees of freedom.
#Solution
#We apply the quantile function qf of the F distribution against the decimal value 0.95.
qf(.95, df1=5, df2=2)