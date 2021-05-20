mydata<-read.csv(choose.files("wine.csv"))
View(mydata)
help(princomp)
attach(mydata)
cor(mydata)
pcaObj<-princomp(mydata, cor = TRUE, scores = TRUE, covmat = NULL)
summary(pcaObj)
loadings(pcaObj)
plot(pcaObj)
biplot(pcaObj)
pcaObj$scores
pcaObj$scores[,1:3]
mydata1<-cbind(mydata,pcaObj$scores[,1:3])
View(mydata1)
clus_data<-mydata1[,15:17]
clus_data
norm_clus<-scale(clus_data)
dist1<-dist(norm_clus,method = "euclidean")
fit1<-hclust(dist1,method="complete")
plot(fit1, hang=-1) 
groups<-cutree(fit1,4) 
screwplot(groups)
membership_1<-as.matrix(groups) 
View(membership_1)
final1<-cbind(membership_1,mydata) 
View(final1)
View(aggregate(final1[,-c(1,15:17)],by=list(membership_1),FUN=mean))

