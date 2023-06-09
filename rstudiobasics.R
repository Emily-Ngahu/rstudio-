#variables 
a <- 10
a 
b = 6
b
#vectors 
c<- c(22,23,45,67,45,45)
c
d <- 20:300
d 
e<- seq(1,10)
e
f<- rep(10,4)
f
g<- c[4]
g
h<-d[2:10]
h
i<-d[c(2,10,15)]
i
j<-d[c(d>210)]
j
e[3]<-20
e
#matrices 
dt<-c(2,3,4,6,8,9)
dt
matdt<- matrix(dt,nrow=2)
matdt
matdt1<-matrix(c(2,3,4,5),nrow=2)
matdt1
matdt2<- matrix(c(2,3,4,5),nrow=2,byrow=T)
matdt2
#* multiplies elemetwise
matdt3<-matdt1*matdt2
matdt3
#row*column
mat4<-matdt1%*%matdt2
mat4
#transposing a matrix
t(mat4)
#inverse of a matrix 
solve(mat4)
#determinant
det(mat4)
#eigen values
e<-eigen(mat4)
e
values<-e$values
values
vectors<-e$vectors
vectors
colnames(matdt1)<-c("maths","English")
rownames(matdt1)<-c("Em","Roy")
matdt1
vec1<-c(3,4,5,6,7,8,9,6)
vec1
vec2<-c(2,4,7,3,5,8,4,9)
vec2
vec12<-rbind(vec1,vec2)
vec12
vec21<-cbind(vec2,vec1)
vec21
matdt1[,2]
matdt1[1,]
matdt1[2,2]
matdt1[1,c(1,2)]
vec21[c(1,4),]
#dataframes 
students<-c("A","B","C","D","E")
maths<-c(50,60,90,60,30)
english<-c(20,90,60,15,40)
Geography<-c(90,16,70,30,40)
status<-c("pass","pass","fail","fail","pass")
results<-data.frame(students,maths,english,Geography,status)
results
results[status=="fail"]
results[c(1,4),c(1,2,5)]
#factors
gender<-c("male","female","male","female")
gender
#functions
add<-function(a,b){
  res<-a+b
  return(res)
}
add(3,4)
area<-function(radius){
  A<-pi *(radius)^2
  return(A)
}
radius=4
simpleInt<-function(p,r,t){
  SI<-p*r*t
  return(SI)
}
simpleInt(1300,0.1,6)
sd<-function (x){
  n<- length(x)
  x.bar<-mean(x)
  varx<-sum(x-x.bar)^2/(n-1)
  sd<-sqrt(varx)
  return(sd)
}
x<-c(2,5,7,8,2,5,8,7)
sd(x)
#solutions of linear equations
#using matrice - matrix of coefficients 
#x=inverse of the matrix * matrix of 
#Differentiation 
y<- expression(x^2+3*x+2)
D(y,"x")
#integration 
func4<-function(x){
  (x^4)+9
}
integrate(func4,2,5)
#Descripvite statistics
#measures of central tendency
#mean
k<-c(2,4,6,7,8,9,5,6,7,4)
mean(k)
#median
median(k)
sort(k)
#mode -create a table of frequency
table(k)
vals<-c(10,30,10,5,3,3,6,8,5,3,5,9)
table(vals)
#trimmed mean
data<-c(-15,8,6,7,9,10,7,2,3,10)
mean(data,trim=0.1)
#excludes 10/100 of values on both ends
mean(data,trim=0.2)
#excludes 20/100 0f values on both ends 
#MEASURES OF DISPERSION 
#range 
l<-c(10,2,3,30,60)
max(l)-min(l)
range(l)
#interquartilerange
val<-c(20,63,5,98,7)
IQR(val)
#for particular quatiles 
quantile(val)
#first quantile only
quantile(val,prob=0.25)
#third quantile 
quantile(val,prob=0.75)
#to get first and third 
quantile(val,prob=c(0.25,0.75))
#MEASURES OF SHAPE
#skweness and kurtosis
#skweness-measues of symmetry if there are more extremly large values than extremely small ones 
install.packages("psych")
library(psych)
values<-c(3,8,10,6,9)
skew(values)
#kurtosis-measure ofpeadkedness
#pletykurtic(negative),leptokurtic(positive),mesokurtic(zero)
kurtosi(values)
#grphical representation 
#histogram-shows no of data points that fall within a specified range of values called bins
wait_time<-c(43.1,35.6,37.6,36.5,36.5,45.3,43.3,40.3,50.2,43.1,47.3,31.2,42.2,45.5,79,30.3,31.2)
wait_time
hist(wait_time)
hist(wait_time,main="customer wait times",
     col="red",
     ylab="no.of.customers",
     xlab="wait.time")
#boxplot-gives info abot outliers
boxplot(wait_time)
boxplot(wait_time,horizontal=TRUE)
#barcharts-summarize categorical data
m<-c(3,4,1,1,3,4,3,3,1,3,2,1,2,1,2,2,3,1,1,1,1,4,1,3)
beer<-factor(m,levels=1:4,labels=c("domestic_can","domestic_bottle","micro_brew","imports"))
#counts of each level
barplot(table(beer))
#proportions 
barplot(table(beer)/length(beer))
#appply - dataframes,arrays,lists
maths<-c(50,60,90,60,30)
english<-c(20,90,60,15,40)
Geography<-c(90,16,70,30,40)
results<-data.frame(maths,english,Geography)
results
#mean of columns
apply(results,2,mean)
#mean of rows(each student)
apply(results,1,mean)
#regression and correlation
y<-c(11,12,14,14,15,17,18,19)
x<-c(11,13,14,16,18,19,21,24)
model<-lm(y~x)
summary(model)
#4.18182-y intercept(a),0.63636-slobe(b)
#2.99e^-05 -pvalue to test hypothesis
#PROBABILITY DISTRIBUTIONS 
#1)Binomial-models no of success in n trials
#simulating
data<-rbinom(n=20,size=10,prob=0.3)
data
#computing probabailities
#p(x=2)
dbinom(x=2,size=6,prob=0.15)
#p(x<=4)
dbinom(0:4,size=6,prob=0.15)
pbinom(4,6,0.15)
#p(x>=4)
1-pbinom(3,6,0.15)
#poisson-no of events in a given interval
#simulaating/generating random variables 
em<-rpois(100,5)
em
#computing probabilities
#p(x=5)
dpois(x=5,lambda=12)
#p(2<=x<=15)
sum(dpois(2:15,6))
#normal-random variables takes a value within a given interval
#simulating
#rnorm
#probabilities 
#dnorm ,pnorm
#RANDOM SAMPLING 
p<-c(2,10,8,6,9,7,3)
sample(p,size=4,replace= TRUE)
sample(p,size=4,replace=FALSE)
#CONDITIONAL EXECUTIONS 
#if condition 
mary<-2
if(mary<5){
  mary<-mary*2
}
mary
#if else 
mary<-10
if(mary<5){
  mary<-mary*2
}else{
  mary<-mary+100
}
mary
#if,else ,else if
exam<-20
if(exam<12){
  print("passable")
}else if(12<exam & exam<14){
  print("good")
}else{
  print("very good")
}
exam<-10
#for loop
for(i in 1:100){
  print(i^3)
}
current_sum<-0
for(i in 1:10){
  current_sum<- current_sum + i
}
current_sum
#while loop-until a certain logical condition is met
x<-0
while(x<20)
{
  x<-x+3
  print(x);
}
y<-1
while(y<=6)
{
  print(y)
  y<-y + 1
}


