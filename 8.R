# ~ VMA ~
# a. Create three different variables, one that is numeric type and other two are 
# vector of characters. Use these to create  data frame of student.(USN,Name,Marks)

name = c(LETTERS[1:26])

usn = paste0("1NT14CS", seq(1:26))

marks = round(runif(26, 0, 100))

out = data.frame(usn, name, marks)

out


# b. Add a new numeric data column to the existing data frame (Age). Provide 
# summary of the data

age = floor(runif(26, 18, 30))

out = cbind(out, age)

out


# c. Display the list of student whose Age is less than 20 and Marks greater 
# than 25

subset(out, age < 20 & marks > 25)