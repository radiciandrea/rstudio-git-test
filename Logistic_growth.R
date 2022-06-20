# Model to describe a logistic population growth

N0 = 2 # initial population
r = 0.02 #instantaneous growth rate
K = 2 * 10^6 #carrying capacity
T_max = 1000 # simulation time limit


N <- c()
N <- c(N0, N)

for (i in 1:T_max) {
  N = c(N, N[i] + r*N[i]*(1 - N[i]/K))
}

plot(N)
