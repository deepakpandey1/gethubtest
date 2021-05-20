falt=read.csv(choose.files())
View(falt)
attach(falt)
falt1=table(Weekend,Weekdays)
View(falt1)
prop.test(x=c(120,47),n=c(287,113),conf.level = 0.95,correct = FALSE, alternative = "two.sided")
#hence the proportion of mail and female are same   