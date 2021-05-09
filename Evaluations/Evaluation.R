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

library('dplyr')
library(ggplot2)

#Removing columns that we aren't using
head(DF_Movies_filtered)
DF_Movies_filtered$Day.of.Week <- NULL
DF_Movies_filtered$Director <- NULL
DF_Movies_filtered$Release.Date <- NULL
DF_Movies_filtered$Adjusted.Gross...mill. <- NULL
DF_Movies_filtered$IMDb.Rating <- NULL
DF_Movies_filtered$MovieLens.Rating <- NULL
DF_Movies_filtered$Overseas. <- NULL
DF_Movies_filtered$Overseas...mill. <- NULL
DF_Movies_filtered$Runtime..min. <- NULL
DF_Movies_filtered$Profit. <- NULL
DF_Movies_filtered$Profit...mill. <- NULL

#Filtering the dataframe
Movies <- filter(datos, Genre == "action" | Genre == "adventure" | Genre == "animation" | 
         Genre == "comedy" | Genre == "drama")

DF_Movies_filtered <- filter(Movies, Studio == "Buena Vista Studios" | Studio == "Fox" 
                             | Studio == "Paramount Pictures" | Studio == "Sony" | 
                               Studio == "Universal" | Studio == "WB")

#Shape of the Movies Data Frame
cat(nrow(Movies), " x ", ncol(Movies))

##<----------------------------------------------------------------------------
u <- ggplot(DF_Movies_filtered, aes(x=Genre, y = Gross...US))

u + geom_jitter(aes(color=Studio, size=Budget...mill.)) + geom_boxplot(alpha=0.5)

u + geom_jitter(aes(color=Studio, size=Budget...mill.)) + geom_boxplot(alpha=0.5) + 
  xlab("Genre") + ylab("Gross % US") + ggtitle("Domestic Gross % by Genre")
