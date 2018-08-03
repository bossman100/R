# ~ VMA ~
# The waiting time of the nth customer in a single server queue. Suppose customers 
# labeled C0, C1, . . . ,Cn arrive at times t= 0,t1,..tn for service by a single 
# server. The inter arrival times A1 = t1 -t 0, . . . , An = t n-t n???1 are 
# independent and identically distributed random variables with the exponential 
# density. 
# The service times S0, S1,.., Sn are independent and identically 
# distributed random variables which are also independent of the inter arrival 
# times with the exponential density

# Let Wj denote the waiting time of customer Cj . Hence customer Cj leaves at time   
# t j + Wj + Sj  If this time is greater than tj+1 then the next customer, Cj+1 must 
# wait for the time tj + Wj + Sj j+1. Hence we have the recurrent relation W0 = 0
# Wj+1 = max{ 0, Wj + Sj  - Aj+1}  for j = 0, 1, . . . , n-1

# a. Write a function queue (n, aRate, sRate) which simulates one outcome of Wn 
# where aRate denotes ??a and sRate denotes ??s. 
# Try out your function on an example such as queue(50,2,2)

q1 <- function(n, aRate, sRate)
{
  w <- 0
  
  for(i in 1:n)
  {
    w<- max(0, w + rexp(1, sRate) - rexp(1, aRate))
  }
  
  return(w)
}

q1(50, 2, 2)


# b. Now suppose we wish to simulate many outcomes of Wn in order to estimate 
# some feature of the distribution of Wn. Write a function which uses a loop to 
# repeatedly call the function in part (a) to calculate Wn. Then write another 
# function which uses sapply (or replicate) to call the function created in 
# part (a). Compare the speed of the two functions by using system.time.

q3 <- function(nRep, n, sRate, aRate)
{
  wVec<- rep(NA, nRep)
  
  for (j in 1:nRep)
    wVec[j] <- q1(n, sRate, aRate)
  
  return(wVec)
}


q4<- function(nRep, n, sRate, aRate)
{
  sapply(rep(n, nRep), q1, sRate, aRate)
}

system.time(q3(5,5000,2,2))

system.time(q4(5,5000,2,2))


# c. Can we do any better? Try writing a vectorised form of the basic recurrence 
# relation Wj+1 = max{0, Wj + Sj - Aj+1} where Wj is treated as a vector. Compare
# the speed of this new function with the two answers to the previous part.

