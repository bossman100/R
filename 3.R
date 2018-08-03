# ~ VMA ~
# Create vector for the following
# a. (4, 6, 3, 4, 6, 3,  . . . , 4, 6, 3) where there are 10 occurrences of 4.

vec = rep(c(4, 6, 3), 10)

vec

# b. Use the function paste to create the following character vectors of length 30 
# ("fn1", "fn2", ..., "fn30").In this case, there is no space between fn and 
# the number

out = paste0("fn", 1:30)

out