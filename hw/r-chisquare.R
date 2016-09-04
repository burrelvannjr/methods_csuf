setwd("/Users/burrelvannjr/Desktop")
#install.packages("MASS")
##open chi square library
library(MASS)

#pull in the data
data1 <- read.csv("data_r.csv",header=TRUE,sep=",")
##another way to pull in data
#field <- read.csv(file.choose())

##call the data
data1

##attach data to working memory
attach(data1)
##chi2 between 2 variables
table(tvhours, memnum)
##chi2 between 2 variables with significance
chisq.test(tvhours, memnum)

##another way of running it
##chi2 between 2 variables
#ch2.1 = table(tvhours, memnum)
##chi2 between 2 variables with significance
#chisq.test(chi2.1)


