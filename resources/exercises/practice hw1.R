#this is how you set your working directory, it's where your data are saved
setwd("/Users/burrelvannjr/Dropbox/methods_csuf")

#load those packages so you can work with them
library(psych)
#for editing variable labels
library(Hmisc)
#for reading in data from the web
library(RCurl)

#u
#pull in the DATASET and make it a workable object (call it DATA or whatever you want)
DATA1<-read.csv("resources/data/GSS2014_cleaned_nm.csv",header=TRUE,sep=",")
#add variable labels to data set
source("resources/data/LABELS_script.R")


#pull in the DATASET and make it a workable object (call it DATA or whatever you want)
DATA1<-read.csv(text=getURL("https://raw.githubusercontent.com/burrelvannjr/methods_csuf/master/resources/data/GSS2014_cleaned_nm.csv"))
#add variable labels to data set
source("https://raw.githubusercontent.com/burrelvannjr/methods_csuf/master/resources/data/label_code.R")

#adding a value label
#DATA1$sex <- factor(DATA1$sex,levels = c(1,2),labels = c("male", "female"))

#call a VARIABLE within the DATA
DATA1$polviews
DATA1$oppsegov

#you can also make the variable a usable object, using the assignment operator
#NEWVARIABLE<-DATA1$VARIABLE

##psych package descriptive/univariate statistics
describe(DATA1$polviews)
describe(DATA1$oppsegov)

#individually call descriptive/univariate statistics for your VARIABLE
mean(DATA1$polviews)
mean(DATA1$oppsegov)

#however, there are missing values, and to run the statistics we need to remove the missing values ("NA") from the analysis, using na.rm=TRUE
mean(DATA1$polviews, na.rm=TRUE)
sd(DATA1$polviews, na.rm=TRUE)
min(DATA1$polviews, na.rm=TRUE)
max(DATA1$polviews, na.rm=TRUE)
median(DATA1$polviews, na.rm=TRUE)
range(DATA1$polviews, na.rm=TRUE)

#however, there are missing values, and to run the statistics we need to remove the missing values ("NA") from the analysis, using na.rm=TRUE
mean(DATA1$oppsegov, na.rm=TRUE)
sd(DATA1$oppsegov, na.rm=TRUE)
median(DATA1$oppsegov, na.rm=TRUE)
min(DATA1$oppsegov, na.rm=TRUE)
max(DATA1$oppsegov, na.rm=TRUE)
range(DATA1$oppsegov, na.rm=TRUE)


#fixing the range problem for your VARIABLE
MIN<-min(DATA1$VARIABLE, na.rm=TRUE)
MAX<-max(DATA1$VARIABLE, na.rm=TRUE)
MAX-MIN
RANGE<-MAX-MIN
RANGE
