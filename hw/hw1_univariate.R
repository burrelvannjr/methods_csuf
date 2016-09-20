#this is how you set your working directory, it's where your data are saved
setwd("DIRECTORY")

#load those packages so you can work with them
library(psych)
#for editing variable labels
library(Hmisc)
#for reading in data from the web
library(RCurl)

#pull in the DATASET from your working directory and make it a workable object (call it DATA or whatever you want)
DATA1<-read.csv("DATASET.csv",header=TRUE,sep=",") #DATA1<-read.csv(text=getURL("LINK.csv"))

#call the data
DATA1

#add variable labels to data set by running an R script
source("LABELS.R") #source("LINK.R")

#call a VARIABLE within the DATA
DATA1$VARIABLE

#you can also make the variable a usable object, using the assignment operator
#NEWVARIABLE<-DATA1$VARIABLE

##psych package descriptive/univariate statistics
describe(DATA1)

#individually call descriptive/univariate statistics for your VARIABLE
mean(DATA1$VARIABLE)

#however, there are missing values, and to run the statistics we need to remove the missing values ("NA") from the analysis, using na.rm=TRUE
mean(DATA1$VARIABLE, na.rm=TRUE)
median(DATA1$VARIABLE, na.rm=TRUE)
sd(DATA1$VARIABLE, na.rm=TRUE)
min(DATA1$VARIABLE, na.rm=TRUE)
max(DATA1$VARIABLE, na.rm=TRUE)
range(DATA1$VARIABLE, na.rm=TRUE)

#fixing the range problem for your VARIABLE
MIN<-min(DATA1$VARIABLE, na.rm=TRUE)
MAX<-max(DATA1$VARIABLE, na.rm=TRUE)
MAX-MIN
RANGE<-MAX-MIN
RANGE
