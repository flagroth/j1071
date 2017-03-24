library(j1071)

data("iris")

train_index <- sample(1:nrow(iris), size = 0.7*nrow(iris), replace = F)
train <- iris[train_index,]
test <- iris[-train_index,]


model <- svm(train[,1:4],train$Species, iter = 10)
pred <- predict(model, test[1:4])

table(real=test$Species,predicted=pred)
