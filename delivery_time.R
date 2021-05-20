dur=read.csv(choose.files())
View(dur)
summary(dur)
attach(dur)
attach(dur)
library("lattice")
dotplot(dur$Delivery.Time, main="Dot Plot of Waist Circumferences")
dotplot(dur$Sorting.Time, main="Dot Plot of Adipose Tissue Areas")
range(dur)
boxplot(dur$Delivery.Time,col="dodgerblue4")
boxplot(dur$Sorting.Time,col="red", horizontal = T)
hist(dur$Delivery.Time)
hist(dur$Sorting.Time)
qqnorm(dur$Delivery.Time)
qqline(dur$Sorting.Time)
qqnorm(dur$Delivery.Time)
qqline(dur$Sorting.Time)
plot(dur$Delivery.Time,dur$Sorting.Time,main="Scatter Plot", col="Dodgerblue4", 
     col.main="Dodgerblue4", col.lab="green", pch=22)  

colnames(dur)=c("dil","sort")
View(dur)
reg=lm(dil~sort , data = dur) # Y ~ X function to get the best model 
summary(reg)# to find the R value 
confint(reg,level = 0.95)# to find B0 and B1 
pred=predict(reg,interval = "predict")# predict the error 
pred
reg=lm(sqrt(dil)~sort , data = dur)# square root function model 
summary(reg)
confint(reg,level = 0.95)
pred=predict(reg,interval = "predict")
pred
reg=lm(log(dil)~sort,data = dur)
summary(reg)
confint(reg,level = 0.95)
pred=predict(reg,interval = "predict")
pred
reg=lm(dil~log(sort), data = dur)
summary(reg)
confint(reg,level = 0.95)
pred=predict(reg,interval = "predict")
pred
reg=lm(log(dil)~sort + I(sort*sort), data=dur)
summary(reg)
confint(reg, level = 0.95)
pred=predict(reg,interval = "predict")
pred
