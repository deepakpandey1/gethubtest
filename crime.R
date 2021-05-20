crime = read.csv(choose.files(),header = TRUE)
View(crime)
crime1=crime[,-1]
View(crime1)
normalised = scale(crime1)
View(normalised)
#complte 
S=dist(normalised,method = "euclidean")
fit = hclust(S, method = "complete")
fit
plot(fit)
plot(fit, hang=-1)
group = cutree(fit,k = 4)
rect.hclust(fit,k=4,border = "red")
#single
d=dist(normalised,method = "euclidean")
fit = hclust(d,method = "single")
fit
plot(fit)
plot(fit,hang = -1)
group = cutree(fit,k=4)
rect.hclust(fit,k=4,border = "red")
plot(crime)
text(crime)
df=scale(crime)
kd=kmeans(scale(crime1),4)
library(animation)
km <- kmeans.ani(crime1, 4)

