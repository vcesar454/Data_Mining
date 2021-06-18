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

#Normalizing the data for each column in the dataset.
iris.new$Sepal.Length<- normalize(iris.new$Sepal.Length)
iris.new$Sepal.Width<- normalize(iris.new$Sepal.Width)
iris.new$Petal.Length<- normalize(iris.new$Petal.Length)
iris.new$Petal.Width<- normalize(iris.new$Petal.Width)
head(iris.new)

result<- kmeans(iris.new,3) #aplly k-means algorithm with no. of centroids(k)=3
result$size # returns the number of records in each cluster


result$centers # gives value of cluster center datapoint value(3 centers for k=3)
result$cluster #gives cluster vector showing the custer where each record falls

#Verify results of clustering with graphics
par(mfrow=c(2,2), mar=c(5,4,2,2))
plot(iris.new[c(1,2)], col=result$cluster)# Plot to see how Sepal.Length and Sepal.Width data points have been distributed in clusters
plot(iris.new[c(1,2)], col=iris.class)# Plot to see how Sepal.Length and Sepal.Width data points have been distributed originally as per "class" attribute in dataset
plot(iris.new[c(3,4)], col=result$cluster)# Plot to see how Petal.Length and Petal.Width data points have been distributed in clusters
plot(iris.new[c(3,4)], col=iris.class)

#Shows which type of flower belongs to in the cluster
table(result$cluster,iris.class)

library(cluster)
clusplot(iris, result$cluster, color=T, shade=T, labels=0, lines=0)