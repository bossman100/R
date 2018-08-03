# ~ VMA ~
# a.

a = 1 + sum(cumprod(seq(2, 38, 2) / seq(3, 39, 2)))

a


# b.

b = ((2 ^ seq(1, 25)) / seq(1, 25)) + ((3 ^ seq(1, 25)) / (seq(1, 25) ^ 2))

b = sum(b)

b