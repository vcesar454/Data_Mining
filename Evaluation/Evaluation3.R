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

#Create a confusion matrix with the test data and the prediction
cm = table(test_set[, 3], y_pred)
cm

#The library 'ElemStatLearn' needs to be installed to run the following code
#Needs to be downloaded from the CRAN Repository. Once it's downloaded it comes
#on a compressed file, it needs to be unzipped before running the code commented
#below. Locate the uncompressed folder and run the command below replacing the path
#where the file is located.
#install.packages("C:\Users\vcesa\Downloads\ElemStatLearn", repos=NULL, type="source")
library(ElemStatLearn)


#Declare set as the test data set
set = training_set

#X1 and X2 variables declare the limits in which the grid will be limited to.
#Then the grid is expanded and the column names of the data are defined. 
#After that, a plot is created to represent the data of the predictor.
#Added some color after
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, newdata = grid_set)
plot(set[, -3], main = 'SVM Radial Kernel (Training set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))

#In the same way as in the previous code, the evaluation and classification of the data is done
set = test_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, newdata = grid_set)
plot(set[, -3], main = 'SVM Radial Kernel (Test set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))


