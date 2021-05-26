companny = read.csv(choose.files())
View(companny)
companny1 = cut(companny$Sales , breaks = c(0,4,8,12,16,17) , labels = c("A","B","C","D","E"))
View(companny1)
compannny2 = companny[,(2:11)]
View(compannny2)

company = data.frame(companny1,compannny2)
View(company)

install.packages("C50",dependencies = T)
library(C50)
install.packages("caret")
library(caret)

inTraininglocal <- createDataPartition(company$companny1 ,p=.75, list=F)
View(inTraininglocal)
training <- company[inTraininglocal,]
View(training)
testing <- company[-inTraininglocal,]
View(testing)

model <- C5.0(training$companny1~.,data = training,trails = 1000)

testing[,1]
summary(model)
pred <- predict.C5.0(model,training[,-1])
pred
pred1 <- predict.C5.0(model,testing[,-1])
pred1
a <- table(training$companny1,pred)
b <- table(testing$companny1,pred1)
a
b
sum(diag(b)/sum(b))
1-sum(diag(b)/sum(b))
plot(model)
