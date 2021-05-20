install.packages("recommenderlab", dependencies=TRUE)
install.packages("Matrix")
library("recommenderlab")

movie_rate_data <- read.csv(file.choose())#metadata about the variable
str(movie_rate_data)
View(movie_rate_data)

hist(movie_rate_data$rating)

movie_rate_data_matrix <- as(movie_rate_data, 'realRatingMatrix')

movie_recomm_model1 <- Recommender(movie_rate_data_matrix, method="POPULAR")
movie_recomm_model1 <- Recommender(movie_rate_data_matrix, method="RANDOM")
movie_recomm_model1 <- Recommender(movie_rate_data_matrix, method="UBCF")

recommended_items1 <- predict(movie_recomm_model1, movie_rate_data_matrix[1], n=5)
as(recommended_items1, "list")




