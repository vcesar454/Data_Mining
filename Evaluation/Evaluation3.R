getwd()
setwd("C:\\Users\\vcesa\\Desktop\\Tareas\\8vo Semestre\\Minería de Datos\\source\\Unit_3\\Evaluation")
getwd()

#We look for the data file or we can create a general directory.
dataset = read.csv(file.choose())
dataset = read.csv('Social_Network_Ads.csv')

dataset = dataset[3:5]
dataset