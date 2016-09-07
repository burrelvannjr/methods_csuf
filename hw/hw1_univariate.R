#this is how you set your working directory, it's where your data are saved
setwd("DIRECTORY")

#load those packages so you can work with them
library(psych)

#pull in the DATASET and make it a workable object (call it DATA or whatever you want)
DATA1<-read.csv("DATASET.csv",header=TRUE,sep=",")

#call the data
DATA1

#call a VARIABLE within the DATA
DATA1$VARIABLE

##psych package descriptive/univariate statistics
describe(DATA1)

#individually call descriptive/univariate statistics for your VARIABLE
mean(DATA1$VARIABLE)
median(DATA1$VARIABLE)
sd(DATA1$VARIABLE)
min(DATA1$VARIABLE)
max(DATA1$VARIABLE)
range(DATA1$VARIABLE)

#fixing the range problem for your VARIABLE
MIN<-min(DATA1$VARIABLE)
MAX<-max(DATA1$VARIABLE)
MAX-MIN
RANGE<-MAX-MIN
RANGE
