# ~ VMA ~
# a. Turn the vector of character items "Control", "Control", "Control", 
# "Ear Removal", "Ear Removal", "Ear Removal", "Ear Removal", "Fake Ear Removal",
# "Fake Ear Removal", "Fake Ear Removal", "Fake Ear Removal" into a Factor variable 
# and create a table from it to show the number of entries in each treatment.

vec = rep(c("Control", "Ear Removal", "Fake Ear Removal"), c(3, 4, 4))

vec = factor(vec)

tab = table(vec)

tab


# b. Create a vector of character variables that contains 25 "a", 15 "b", and 58 "c"
# instances. What is the length of this vector? Create a table from the entries.

vec = rep(c("a", "b", "c"), c(25, 15, 58))

tab = table(vec)

tab