
data()

nrow(mtcars)
ncol(mtcars)

d <- data.frame(mtcars[9])
d
c0 = 0
c1 = 0

for(i in 1:nrow(d))
{
  if(d[i,] == 0)
    c0 = c0 + 1
  else
    c1 = c1 + 1
}

print(c0) 
print (c1)
print(max(c0,c1))
plot(mtcars$wt, mtcars$hp, col = "red", pch = 3, bty = "l", xlab = "Car Weight in 1K lbs", ylab = "Horsepower" )

attach(mtcars)

newmtc = data.frame(mpg, as.integer(cyl), disp, hp, drat, wt, qsec, as.integer(vs), as.integer(am), gear, carb) 
sapply(newmtc, class)

mtcars[,2] <= 5
