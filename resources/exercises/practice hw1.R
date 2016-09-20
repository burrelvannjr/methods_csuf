#this is how you set your working directory, it's where your data are saved
setwd("/Users/burrelvannjr/Dropbox/methods_csuf")

#load those packages so you can work with them
library(psych)
#for editing labels
library(Hmisc)
#for reading in urls/csvs/data from urls
library(RCurl)
library(foreign)

#pull in the DATASET and make it a workable object (call it DATA or whatever you want)
DATA1<-read.csv("resources/data/GSS2014_cleaned_nm.csv",header=TRUE,sep=",")

url <- "https://raw.github.com/burrelvannjr/methods_csuf/master/resources/data/GSS2014_cleaned.csv"


source("resources/data/variable labels code.R")


#adding a value label
#DATA1$sex <- factor(DATA1$sex,levels = c(1,2),labels = c("male", "female"))

#with Hmisc package, adds value label
label(race) <- "Sex"

#call the data
DATA1

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
