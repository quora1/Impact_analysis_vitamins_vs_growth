install.packages("ggplot2")
library("ggplot2")

data(ToothGrowth)
head(ToothGrowth)


lambda <- 0.2 # lambda
n <- 40 # size of the sample
sim_num <- 1000 # number of drows
#  seed for reproducibility
set.seed(67893)

theoretical_mean <- 1/lambda
sample_mean <-mean(rexp(40, 0.2))
mean_difference<-abs(theoretical_mean-sample_mean)
#results
theoretical_mean
sample_mean
mean_difference

mns = NULL
for (i in 1 : 1000) mns = c(mns, mean(rexp(40, 0.2)))
sample_mean1000<- mean(mns)
mean_difference2<-theoretical_mean-sample_mean1000
sample_mean1000
mean_difference2
mns = NULL
for (i in 1 : 1000) mns = c(mns, mean(rexp(40, 0.2)))
var(mns)

theretical_variance = 1/lambda
theretical_variance
sample_variance <- var(rexp(40, 0.2))
var_difference <- theretical_variance-sample_variance
theretical_variance
sample_variance
var_difference

vrs = NULL
for (i in 1 : 1000) vrs = c(vrs, var(rexp(40, 0.2)))
sample_var_mean1000<- mean(vrs)
var_mean_difference<-theretical_variance-sample_var_mean1000
sample_var_mean1000
var_mean_difference

##large collection of random exponentials
expDist <- matrix(data=rexp(n * sim_num, lambda), nrow=sim_num)
head(expDist)
expDistMeans <- data.frame(means=apply(expDist, 1, mean))
head(expDistMeans)
##large collection of averages of 40 exponentials
mns = NULL
for (i in 1 : 1000) mns = c(mns, mean(rexp(40, 0.2)))
sample_mean1000<- mean(mns)
head(mns)

hist(mns)
hist(expDistMeans$means)



vrs = NULL
for (i in 1 : 1000) vrs = c(vrs, var(rexp(40, 0.2)))
sample_var_mean1000<- mean(vrs)
var_mean_difference<-theretical_variance-sample_var_mean1000
sample_var_mean1000
var_mean_difference
```




##project SI
lambda = 0.2
## mean = variance = 1/lambda
##investigate the distribution of averages of 40 exponentials. 
##in thousand simulations
##rexp(n, lambda)
##example with uniform
hist(runif(1000))
mns = NULL
for (i in 1 : 1000) mns = c(mns, mean(runif(40)))
hist(mns)

##example with exponential

##mean of the distribution: 1/0.2
1/0.2
## mean of the sample n=40
mean(rexp(40, 0.2))
#LLN

##as we estimate the mean many times, 
##we see that it's distribution approaches normal distrubution,

hist(rexp(40, 0.2))
mns = NULL
for (i in 1 : 1000) mns = c(mns, mean(rexp(40, 0.2)))
hist(mns)

## the more, the higher number of estimations 

hist(rexp(40, 0.2))
mns = NULL
for (i in 1 : 10000) mns = c(mns, mean(rexp(40, 0.2)))
hist(mns)
##CLT: distribution of averages of iid variables (properly normalized) 
##becomes that of a standard normal as the sample size increases
par()

expDist <- matrix(data=rexp(n * sim_num, λ), nrow=sim_num)
exponentialDistributionMeans <- data.frame(means=apply(exponentialDistributions, 1, mean))

expDist <- matrix(data=rexp(n * sim_num, lambda), nrow=sim_num)
head(expDist)
expDistMeans <- data.frame(means=apply(expDist, 1, mean))
head(expDistMeans)
##large collection of averages of 40 exponentials
mns = NULL
for (i in 1 : 1000) mns = c(mns, mean(rexp(40, 0.2)))
sample_mean1000<- mean(mns)
head(msn)
