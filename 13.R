row=(readline("Enter number of entries:"))
empid<-vector(mode="integer",length=row)
empname<-vector(mode="character",length=row)
doj<-vector(mode="integer",length=row)
empcode<-vector(mode="integer",length=row)
dept<-vector(mode="character",length=row)
design<-vector(mode="character",length=row)

for(i in 1:row)
{
  empid[i]=as.integer(readline("Enter empid:"))
  empname[i]=readline("Enter name")
  doj[i]=as.integer(readline("enter doj"))
  empcode[i]=as.integer(readline("enter empcode"))
  dept[i]=as.character(readline("enter department"))
  design[i]=as.character(readline("enter designation"))
}

c=data.frame(empid,empname,doj,empcode,dept,design)
c
write.csv(c,"file3.csv")
write.csv2(c,file="file2.csv")
write.table(c,file="file2.csv",append = TRUE,col.names=FALSE,row.names=TRUE,sep=";")
x<-read.csv2("file2.csv")
x
