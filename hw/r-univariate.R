#this is how you set your working directory
setwd("/Users/student1/Desktop")

#install required packages
install.packages("MASS")
install.packages("psych")

#load those packages so you can work with them
library(MASS)
library(psych)

#pull in the data
mtcars

#make the dataset into a workable object
data1<-mtcars
#data2<-read.csv("GSS2014_cleaned.csv",header=TRUE,sep=",")

#call the data
data1

#call a variable within the data
data1$mpg

##psych package descriptive statistics
describe(data1)

#individually call univariate statistics
mean(data1$mpg)
median(data1$mpg)
sd(data1$mpg)
min(data1$mpg)
max(data1$mpg)
range(data1$mpg)

#fixing the range problem
min1<-min(data1$mpg)
max1<-max(data1$mpg)
max1-min1
#or 
range1<-max1-min1
range1

#working with randomly-generated, normally distributed data
rnorm(10)
rnorm(100)
#rnorm(100,0,1)

#make these data callable
normdata<-rnorm(100)
#normdata<-rnorm(100,0,1)

#call univariate statistics from those data
mean(normdata)
sd(normdata)
describe(normdata)
