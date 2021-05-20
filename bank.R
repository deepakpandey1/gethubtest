bank=read.csv(choose.files())
View(bank)
bank1=na.omit(bank)
model=glm(y~.,data = bank1 , family = "binomial")
summary(model)
prob=predict(model,type = "response",bank1)
View(prob)
confusion=table(prob>0.5 ,bank1$y)
confusion 
Accuracy<-sum(diag(confusion)/sum(confusion))
Accuracy
acc=1-Accuracy
acc
library(ROCR)
rocr=prediction(prob,bank1$y)
rocr1=performance(rocr,'tpr','fpr')
plot(rocr1,colorize=T,text.adj = c(0.5, 0.5))
