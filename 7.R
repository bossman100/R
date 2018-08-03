# ~ VMA ~
# a. Write a function tmpFn which takes a single argument xVec. The function should 
# return the vector of values of the function f(x) evaluated at the values in xVec. 
# Hence plot the function f(x) for -3 < x < 3.

x = seq(-3, 3, length=100)

tmpFn <- function(xVec) ifelse(xVec <= 0, return(xVec ^ 2 + 2 * xVec + 3),
                              ifelse(xVec < 2, return(xVec + 3), 
                                     return(xVec ^ 2 + 4 * xVec - 7)))

plot(x, tmpFn(x), "h")


# b. Write a function which takes a single argument which is a matrix. The function
# should return a matrix which is the same as the function argument but every odd 
# number is doubled.

dub <- function(vec)
{
  for(i in 1:nrow(vec))
  {
    for(j in 1:ncol(vec))
    {
      if(vec[i, j] %% 2 != 0)
        vec[i, j] = vec[i, j] * 2
    }
  }
  
  return(vec)
}

dub(matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2))