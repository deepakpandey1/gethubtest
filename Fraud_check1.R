fraud = read.csv(choose.files())
View(fraud)

install.packages("C50",dependencies = T)
library(C50)
install.packages("caret")
library(caret)

inTraininglocal <- createDataPartition(fraud$TaxableIncome ,p=.75, list=F)
View(inTraininglocal)
training <- fraud[inTraininglocal,]
View(training)
testing <- fraud[-inTraininglocal,]
View(testing)

model <- C5.0(training$TaxableIncome~ .,data = training, trails = 1000)

testing[,3]
summary(model)
pred <- predict.C5.0(model,training[,-3])
pred
pred1 <- predict.C5.0(model,testing[,-3])
pred1
a <- table(training$TaxableIncome,pred)
b <- table(testing$TaxableIncome,pred1)
a
b
sum(diag(b)/sum(b))
1-sum(diag(b)/sum(b))
plot(model)


