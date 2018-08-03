#a
tsEwma <- function( tsDat, m0=0, delta=0.7) 
{ 
n <- length(tsDat) 
mVec <- rep(NA,n+1)
mVec[1] <- m0 
for(j in 2:(n+1)){ 
mVec[j] <- (1-delta)*tsDat[j-1] + delta*mVec[j-1] 
} 
ts(mVec[-1], start=start(tsDat), frequency=frequency(tsDat)) 
} 
tmp=ts(rnorm(400000),start=c(1960,3),frequency=12)
system.time(tsEwma(tmp))



#b
#1
myListFn <- function(n) 
{ 
xVec <- rnorm(n) 
xBar <- mean(xVec) 
yVec <- sign(xBar)*rexp(n, rate=abs(1/xBar)) 
count <- sum( abs(yVec) > abs(xVec) ) 
list(xVec=xVec, yVec=yVec, count=count) 
}

#2
 myList <- lapply( rep(2,2), myListFn )
myList
  myMatrix <- sapply( rep(2,2), myListFn )
myMatrix

#3
lapply(myList, FUN="[[", 2)

#4
sapply(myList, FUN="[[", 2)

#5
myList2 <- lapply(myList, function(x){list(xVec=x$xVec, yVec=x$yVec)})
myList2

#6
myList[which( unlist(lapply( myList, function(x){x[[3]]>2} )) )] 

lapply( rep(10,4), myListFn )
sapply( rep(10,4), myListFn )