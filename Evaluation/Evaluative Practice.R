iris = read.csv(file.choose())
iris = read.csv('Iris.csv') 

data("iris") # load Iris Dataset# load Iris Dataset
library(datasets)
data("iris")
summary(iris)
iris

str(iris) #view structure of dataset
summary(iris) #view statistical summary of dataset
head(iris) #view top  rows of dataset

#Preprocess the dataset
iris.class<- iris[,"Species"]
iris.new<- iris[,c(1,2,3,4)]
head(iris.new)
head(iris.class)

#Using the elbow method to find the optimal number of clusters
set.seed(6)
wcss = vector()
for (i in 1:10) wcss[i] = sum(kmeans(iris.new, i)$withinss)
plot(1:10,
     wcss,
     type = 'b',
     main = paste('The Elbow Method'),
     xlab = 'Number of clusters',
     ylab = 'WCSS')

normalize <- function(x){
  return ((x-min(x))/(max(x)-min(x)))
}