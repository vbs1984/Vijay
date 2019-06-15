#-------------CREATE DATAFRAME FROM VECTORS--------------

eid = c(101,102,103,104)
fn = c("Swati","Shashank","Nikhil","Ajay")
ln = c("Bhalerao","Kumar","Dhayarikar","Kadam")
sal = c(5000,6000,7000,8000)

employees = data.frame(eid,fn,sal,ln)
View(A)

#---------

eid = c(101,102,103,104)
fn = c("Swati","Shashank","Nikhil","AJay")
ln = c("Bhalerao","Kumar","Dhayarikar","Kadam")
sal = c(5000,6000,7000,8000)
did = c(10,10,20,20)

employees = data.frame(eid,fn,sal,ln,stringsAsFactors = FALSE)
str(employees)

#------------ADDING A NEW COL TO DF / REMOVING A COL FROM DATA FRAME---------------


employees = data.frame(employees,did)
employees

employees = employees[,c(-6)]
#-------------data refrence--------------

str(employees)
employees = data.frame(employees,did)
employees$fn
employees$did.1
employees
employees$fn
employees
employees[1,]
employees[c(1,2),]
employees[c(1,2,3),]
employees[,]
employees
employees[,c(2,3)]

#------------CREATE DF FROM CSV---------------

A = read.csv("F:/Data Science Training/Input Files/50_Startups_withhdr.csv")

A = read.csv("F:/Data Science Training/Input Files/50_Startups_without_hdr.csv",
             header = FALSE,
             col.names = c("RND","ADMIN","MKT","STATE","PROFIT"))

A
A = read.csv(file.choose(),header = FALSE,
             col.names = c("RND","ADMIN","MKT","STATE","PROFIT"))

write.csv(A,"F:/Data Science Training/Output Files/50_startups.csv")
A$did = as.factor(A$did)

str(A)
is.numeric(A$RND)
is.numeric(A$STATE)
head(A)
head(A)
fivenum
fivenum(A$PROFIT)
median(A$PROFIT)
ifelse(A$PROFIT <= 107978,"High","Low")
profit_type = ifelse(A$PROFIT <= 107978,"High","Low")
head(A)
A = data.frame(A,profit_type)
A
head(A)
A[1:10,]
A[11:20,]
A[41:20,]
is.factor(A$profit_type)
levels(A$profit_type)


#### Push Testing #####
