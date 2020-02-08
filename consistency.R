set.seed(1)

Ber10 <- numeric(10)
for (k in 1:10)  Ber10[k] =  mean(x= rbinom(k,10,0.5));
plot(Ber10/10, type="l", xlab="Trials", ylab="Estimation of p", main = "Successive values of p  = Y/n for 10 individual Bernoulli trials")
abline(h = .5, col = "red")


Ber100 <- numeric(100)
for (k in 1:100)  Ber100[k] =  mean(x= rbinom(k,100,0.5));
plot(Ber100/100, type="l", xlab="Trials", ylab="Estimation of p", main = "Successive values of p  = Y/n for 100 individual Bernoulli trials")
abline(h = .5, col = "red")

Ber1000 <- numeric(1000)
for (k in 1:1000)  Ber1000[k] =  mean(x= rbinom(k,1000,0.5));
plot(Ber1000/1000, type="l", xlab="Trials", ylab="Estimation of p", main = "Successive values of p  = Y/n for 1000 individual Bernoulli trials")
abline(h = .5, col = "red")

## Another exmaple: rolling a fair die; cf., 
## https://stackoverflow.com/questions/33373872/is-there-a-simple-simulation-of-the-law-of-large-numbers-in-r
die <- 1:6
roll <- function(n) {
  mean(sample(die, size = n, replace = TRUE))
}

plot(sapply(1:1000, roll), type = "l", xlab = "# of dice", ylab = "average")
abline(h = 3.5, col = "red")
