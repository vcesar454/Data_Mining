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

#Shape of the Data Frame
cat(nrow(datos), " x ", ncol(datos))

library(dplyr)
library(ggplot2)

#Removing columns that we aren't using
head(DF_Movies_filtered)
datos$Day.of.Week <- NULL
datos$Director <- NULL
datos$Release.Date <- NULL
datos$Adjusted.Gross...mill. <- NULL
datos$IMDb.Rating <- NULL
datos$MovieLens.Rating <- NULL
datos$Overseas. <- NULL
datos$Overseas...mill. <- NULL
datos$Runtime..min. <- NULL
datos$Profit. <- NULL
satos$Profit...mill. <- NULL