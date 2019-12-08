
#What is the true probability of the distribution?
#Look at probability with equal prior and then update
p_grid <- seq( from=0, to=1, length.out=1000)  
prior <- rep( 1, 1000)  
likelihood <- dbinom(6, size=9, prob=p_grid)  
posterior <- likelihood * prior  
posterior <- posterior/ sum(posterior) 

#now lets sample from the posterior
samples <- sample(p_grid,prob=posterior,size=100000,replace = TRUE)

#now you can look at the different intervals of the prob distrubition
#lets look at the lower distrbution
quantile(samples,0.8)

#and now at the middle distribution
quantile(samples,c(0.1,0.9))
         