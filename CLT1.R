## CLT

n=100
mu=70
sigma=20
x=rnorm(n,mu,sigma)
hist(x,prob=TRUE, col="dodgerblue")
curve(dnorm(x, mean=mu, sd=sigma), 
      col="darkblue", lwd=2, add=TRUE, yaxt="n")