#Getting the dataframe loaded
setwd('C:\\Users\\vcesa\\Desktop\\Tareas\\8vo Semestre\\Minería de Datos\\source\\Unit_2\\Evaluations')
datos = read.csv('Project-Data.csv')

#Exploring Data
datos
head(datos)
tail(datos)
colnames(datos)
nrow(datos)
ncol(datos)
summary(datos)