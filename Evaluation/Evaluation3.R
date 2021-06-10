getwd()
setwd("C:\\Users\\vcesa\\Desktop\\Tareas\\8vo Semestre\\Minería de Datos\\source\\Unit_3\\Evaluation")
getwd()

#We look for the data file or we can create a general directory.
dataset = read.csv(file.choose())
dataset = read.csv('Social_Network_Ads.csv')

dataset = dataset[3:5]
dataset


#We load the “caTools” library and create a random seed.
library(caTools)
set.seed(123)

#Split the dataset into training-set and test-set. Trainingset contains 75% of 
#the data in the original dataset
split = sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)
training_set
test_set

#Normalize or fit the data with the scale function.
training_set[-3] = scale(training_set[-3])
test_set[-3] = scale(test_set[-3])

#To use the naiveBayes functions, a package instalation is required
#Install.packages('e1071')
library(e1071)

# We create the classifier, with naiveBayes and pass it the adjusted training data and the training data as such.
classifier = naiveBayes(x = training_set[-3], y = training_set$Purchased)

#based on the classifier, a prediction is created in the y_pred variable
y_pred = predict(classifier, newdata = test_set[-3])
y_pred