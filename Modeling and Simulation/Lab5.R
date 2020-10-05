#Exercitiul 1
#lcg 1
a0 = 1013904223
a1 = 1664525
m = 2^32
x0 = 2576389
n = 1000000
lcg = function(a0, a1, m, x0, n) #linear congruential generator (LCG)
{
  x = rep(0,n+1)  # rep(x, times) or replicate (x, length.out) - replicate the values in x  (how many times 
  #or the length of replicate
  x[1] = x0
  for(i in 1:n+1)
  {
    if(i == 1)
      x[i] = x0
    else
      x[i] = (a0 + (a1 * x[i-1])) %% m
  }
  return(x)
}
r = lcg(a0, a1, m, x0, n)


#lcg 2
a0 = 1013904223
a1 = 1664525
m = 2^32
x0 = 2576389
n = 10000
r1 = lcg(a0, a1, m, x0, n)

#mcg 1
a1 = 27
m = 256
x0 = 201
n = 71

mcg = function(a1, m, x0, n) 
{
  x = rep(0,n+1)
  x[1] = x0
  for(i in 1:n+1)
  {
    if(i == 1)
      x[i] = x0
    else
      x[i] = (a1 * x[i-1]) %% m
  }
  return(x)
}
r2 = mcg(a1, m, x0, n)
b = rep(0, n+1)

#mcg 2
a1 = 27
m = 256
x0 = 201
n = 150

r3 = mcg(a1, m, x0, n)
b = rep(0, n+1)

#randu 1
randu = function(x0, n) 
{
  x = rep(0,n+1)
  x[1] = x0
  for(i in 1:n+1)
  {
    if(i == 1)
      x[i] = x0
    else
      x[i] = (65539 * x[i-1]) %% (2^31)
  }
  return(x[-1])
}
r4=randu(2,20)

#randu 2
r5=randu(2,20)

#mrg 1
mrg = function(a, s, m, n) {
  k = length(a)
  x = rep(0, n + k)
  for(i in 1:(n+k))
  {
    if(i <= k)
      x[i] = s[i]
    else
      x[i] = (sum(x[(i-1):(i-k)] * a[1:k])) %% m
  }
  return(x)
}
#parameters of MRG
a = c(1, 3)
s = c(5, 3)
m = 7
n = 100
r6 = mrg(a, s, m, n)

#mrg 2
#parameters of MRG
a = c(1, 3)
s = c(5, 3)
m = 7
n = 1000
r7 = mrg(a, s, m, n)

#icg 1
icg = function(a0, a1, m, x0, n) 
{
  x = rep(0, n+1)
  x[1] = x0
  for(i in 1:n+1)
  {
    if(i == 1)
      x[i] = x0
    else
    {
      if(x[i-1] == 0)
        x[i] = a0 %% m
      else
      {
        xi = (x[i-1]^(m-2)) %% m
        x[i] = (a0 + (a1 * x[i-1])) %% m
      }
    }
  }
  return(x)
}
#parameters of ICG
a0 = 3
a1 = 1
m = 7
x0 = 1
n = 100
r8 = icg(a0, a1, m, x0, n)

#icg 2
#parameters of ICG
a0 = 3
a1 = 1
m = 7
x0 = 1
n = 500
r9 = icg(a0, a1, m, x0, n)

#Exercitiul 2
plot(r,main="Grafic lcg",col="red")
plot(r1,main="Grafic lcg2",col="orange")
plot(r2,main="Grafic mcg",col="yellow")
plot(r3,main="Grafic mcg2",col="green")
plot(r4,main="Grafic randu",col="blue")
plot(r5,main="Grafic randu2",col="purple")
plot(r6,main="Grafic mrg",col="pink")
plot(r7,main="Grafic mrg2",col="red")
plot(r8,main="Grafic icg",col="orange")
plot(r9,main="Grafic icg2",col="yellow")

#Exercitiul 3
hist(r,main="Histograma lcg",col="red")
hist(r1,main="Histograma lcg2",col="orange")
hist(r2,main="Histograma mcg",col="yellow")
hist(r3,main="Histograma mcg2",col="green")
hist(r4,main="Histograma randu",col="blue")
hist(r5,main="Histograma randu2",col="purple")
hist(r6,main="Histograma mrg",col="pink")
hist(r7,main="Histograma mrg2",col="red")
hist(r8,main="Histograma icg",col="orange")
hist(r9,main="Histograma icg2",col="yellow")

#Exercitiul 4
acf(r,main="Periodicitate lcg",col="red")
acf(r1,main="Periodicitate lcg2",col="orange")
acf(r2,main="Periodicitate mcg",col="yellow")
acf(r3,main="Periodicitate mcg2",col="green")
acf(r4,main="Periodicitate randu",col="blue")
acf(r5,main="Periodicitate randu2",col="purple")
acf(r6,main="Periodicitate mrg",col="pink")
acf(r7,main="Periodicitate mrg2",col="red")
acf(r8,main="Periodicitate icg",col="orange")
acf(r9,main="Periodicitate icg2",col="yellow")

#Exercitiul 6
ks.test(r,runif)
ks.test(r1,runif)
ks.test(r2,runif)
ks.test(r3,runif)
ks.test(r4,runif)
ks.test(r5,runif)
ks.test(r6,runif)
ks.test(r7,runif)
ks.test(r8,runif)
ks.test(r9,runif)

#Exercitiul 7
chisq.test(r)
chisq.test(r1)
chisq.test(r2)
chisq.test(r3)
chisq.test(r4)
chisq.test(r5)
chisq.test(r6)
chisq.test(r7)
chisq.test(r8)
chisq.test(r9)
