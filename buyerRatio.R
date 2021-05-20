##buyerratio###
buy=read.csv(choose.files())
View(buy)
attach(buy)
stack_data=stack(buy)
attach(stack_data)
table(values,ind)
chisq.test(values,ind)
###hence the proportion of mail and femail are same , accept the null hypothesis###