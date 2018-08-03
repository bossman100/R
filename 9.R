# ~ VMA ~
# Suppose we are given xVec which represents the vector (x1,....,xn) and yVec 
# which represents the vector (y1,...,ym). Suppose further that zVec represents 
# the vector (z1,..,zn) where z1 = number(yj < x1) z2 = number(yj < x2) ... 
# zn = number(yj < xn)

# a. By using the function outer, write a function which takes the arguments xVec 
# and yVec and returns the vector zVec.

xVec = round(runif(5, 0, 10))

xVec

yVec = round(runif(5, 0, 10))

yVec

zaVec <- function(xVec, yVec)
{
  return(colSums(outer(yVec, xVec, "<")))
}

zaVec(xVec, yVec)


# b. Repeat part (a) but use sapply instead of outer

zbVec <- function(xVec, yVec)
{
  return(rowSums(sapply(yVec, xVec, FUN = "<")))
}

zbVec(xVec, yVec)


# c. Now repeat part (a) but use vapply instead of outer or sapply

zcVec <- function(xVec, yVec)
{
  return(rowSums(vapply(yVec, FUN = function(y) {y < xVec}, FUN.VALUE = seq(along = xVec))))
}

zcVec(xVec, yVec)


# d. Investigate the relative speed of your solutions by using system.time

system.time(zaVec(xVec, yVec))

system.time(zbVec(xVec, yVec))

system.time(zcVec(xVec, yVec))