####cutlet####
cutlet1<-read.csv(file.choose())
View(cutlet1)
attach(cutlet1)
colnames(cutlet1)<-c("unitA","unitB")
View(cutlet1)
attach(cutlet1)
shapiro.test(unitA)
shapiro.test(unitB)
var.test(unitA,unitB)
t.test(unitA,unitB,alternative = "greater",var.equal = T)
#hence accept the null hypothesis 