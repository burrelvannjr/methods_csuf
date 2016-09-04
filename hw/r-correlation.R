setwd("/Users/burrelvannjr/Desktop")
#install.packages("Hmisc")
##open sig correlation library
library(Hmisc)

#pull in the data
data1 <- read.csv("data_r.csv",header=TRUE,sep=",")
##another way to pull in data
#field <- read.csv(file.choose())

##call the data
data1

##attach data to working memory
attach(data1)
##correlation between 2 variables
cor(tvhours, memnum)
##correlation between 2 variables with significance
cor.test(tvhours, memnum)

##another way of running it
##correlation between 2 variables
#cor(data1$tvhours, data1$memnum)
##correlation between 2 variables with significance
#cor.test(data1$tvhours, data1$memnum)


##keep only certain variables for correlation matrix
analysisnames <- c("tvhours", "memnum", "empfull", "emppart")
##save those variables as new data set
analysisvars <- data1[analysisnames]
##correlation matrix
cor.mat = cor(analysisvars, method = "pearson")
##correlation matrix with significance
sigcor.mat = rcorr(as.matrix(analysisvars))
#call the significance table
sigcor.mat