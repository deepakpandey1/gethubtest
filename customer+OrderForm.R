tele=read.csv(choose.files())
View(tele)
attach(tele)
stack_tele=stack(tele)
View(stack_tele)
table(values,ind)
chisq.test(values,ind)
#inferences as defective percentage is same in all counturies there is no need of any anction 