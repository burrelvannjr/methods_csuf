#this is how you set your working directory, it's where your data are saved
setwd("DIRECTORY")

#load those packages so you can work with them
library(psych)
#for editing variable labels
library(Hmisc)
#for reading in data from the web
library(RCurl)

#pull in the DATASET from your working directory and make it a workable object (call it DATA or whatever you want)
DATA1<-read.csv("DATASET.csv",header=TRUE,sep=",") 

#add variable labels to data set by running an R script
source("LABELS.R") 

#-----------------CORRELATION-----------------
#correlation is a bivariate relationship between interval/continuous variables

#call two interval/continuous variables (VARIABLE) within  DATA1
DATA1$VARIABLE1
DATA1$VARIABLE2

#correlation between 2 interval/continuous variables without significance
#cor(DATA1$VARIABLE1, DATA1$VARIABLE2, use="complete")
#correlation between 2 interval/continuous variables with significance
cor.test(DATA1$VARIABLE1, DATA1$VARIABLE2)

#correlation between more than 2 interval/continuous variables with significance
#VARIABLE1<-DATA1$VARIABLE1
#VARIABLE2<-DATA1$VARIABLE2
#VARIABLE3<-DATA1$VARIABLE3
#rcorr(cbind(VARIABLE1,VARIABLE2,VARIABLE3))


#-----------------CHI SQUARE-----------------
#chi square is a bivariate relationship between two categorical/discrete variables
#good variables include: relig relig16 age sex race citizen absingle class class16

#call a table with all values of the variable listed
table(DATA1$VARIABLE1, DATA1$VARIABLE2)
#call the actual chi square test
chisq.test(DATA1$VARIABLE1, DATA1$VARIABLE2)


#-----------------T-TEST-----------------
#t-test is a bivariate relationship between one categorical/discrete variable of two groups, and one interval/continuous variable
t.test(DATA1$VARIABLE_INT~DATA1$VARIABLE_CAT)


#-----------------ANOVA-----------------
#t-test is a bivariate relationship between one categorical/discrete variable of more than two groups, and one interval/continuous variable
summary(aov(DATA1$VARIABLE_INT~DATA1$VARIABLE_CAT))


