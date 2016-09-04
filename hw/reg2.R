
data(cats, package="MASS")
setwd("/Users/burrelvannjr/Dropbox")
source("reg.R")
#reg(cbind(1, cats$Bwt), cats$Hwt)

x = cbind(Bwt=cats$Bwt, Const=1)
y = cats$Hw
mod1 <- reg(x, y)
mod1

coef(mod1)
fitted(mod1)
resid(mod1)
summary(mod1)

summary(reg(Hwt~Bwt*Sex,data=cats))

