install.packages("arules")
library("arules") 

install.packages("arulesViz")
library("arulesViz") 

mydata <- read.csv(file.choose())
View(mydata)

inspect(Groceries[1:10])

rules <-  apriori(mydata,parameter=list(support=0.2,confidence=0.7)) 
inspect(rules)
inspect(sort(rules, by="lift"))

rules <-  apriori(mydata,parameter=list(support=0.3,confidence=0.6 , maxlen = 1)) 
inspect(rules)
inspect(sort(rules, by="lift"))

library("arulesViz") 
plotly_arules(arules)
plot(arules,method="grouped")

rules <-  apriori(mydata,parameter=list(support=0.4,confidence=0.7 , maxlen = 2)) 
inspect(rules)
inspect(sort(rules, by="lift"))

library("arulesViz") 
plotly_arules(arules)
plot(arules,method="grouped")

rules <-  apriori(mydata,parameter=list(support=0.2,confidence=0.7 , maxlen = 6)) 
inspect(rules)
inspect(sort(rules, by="lift"))

library("arulesViz") 
plotly_arules(arules)
plot(arules,method="grouped")

