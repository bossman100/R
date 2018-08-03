# ~ VMA ~
# a. Check that A3 = 0 where 0 is a 3 X 3 matrix with every entry equal to 0.

A = matrix(c(1, 1, 3, 5, 2, 6, -2, -1, -3), nrow = 3, ncol = 3, byrow = TRUE)

A

A %*% A %*% A


# b. Replace the third column of A by the sum of the second and third columns.

A[, 3] = A[, 1] + A[, 2]

A


# c. Calculate the 3 x 3 matrix ATA.

t(A) %*% A

crossprod(A)


# d. create the following patterned matrix

outer(c(0, 1, 2, 3, 4), c(0, 1, 2, 3, 4), "+")