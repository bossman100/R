# ~ VMA ~
# Zeller's congruence returns the day of the week f given:
# k = the day of the month,
# y = the year in the century
# c = the first 2 digits of the year (the century number)
# m = the month number (where January is month 11 of the preceding year, 
# February is month 12 of the preceding year, March is month 1, etc.)
# For example, the date 21/07/1963 has m = 5, k = 21, c = 19, y = 63; 
# whilst the date 21/2/1963 has m = 12, k = 21, c = 19 and y = 62.

# a. Write a function weekday(day,month,year) which returns the day of the week 
# when given the numerical inputs of the day, month and year.
# Note that the value of 1 for f denotes Sunday, 2 denotes Monday, etc.

weekday <- function(day, month, year)
{
  month <- month - 2
  
  if(month <= 0) 
  {
    month <- month + 12
    
    year <- year - 1
  }
  
  cc <- year %/% 100
  
  year <- year %% 100
  
  tmp <- floor(2.6 * month - 0.2) + day + year + year %/% 4 + cc %/% 4 - 2 * cc
  
  vec = c("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday")
  
  return(vec[1 + tmp %% 7])
}

print("Enter the date in the following order")

day <- as.integer(readline(prompt="Date:"))

month <- as.integer(readline(prompt="Month:"))

year <- as.integer(readline(prompt="Year:"))

print(paste("Weakday for this date is:", weekday(day,month,year)))


# b. Does your function work if the input parameters day, month and year 
# are vectors with the same length and with valid entries?

weekday(c(2, 25), c(9, 10), c(1996, 2017))