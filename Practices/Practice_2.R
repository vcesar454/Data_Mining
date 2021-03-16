print(iris)     # iris es una tabla con 150 filas para practicas que biende por defecto
plot(iris)       # Representa gráficamente la tabla
summary(iris)    # Resumen estadístico de las columnas
str(iris)        # "Representación textual" del objeto
head(iris)    # primeras seis filas
tail(iris)    # últimas seis filas
?summary   #El simbolo de pregunta antes de la funcion nos muestra como funciona tambien se puede con help
dim(iris)     # filas x columnas ,nos arroja cuantas filas y columnas tenemos
nrow(iris)    # Mestra solo el número de filas
ncol(iris)    #  Mestra solo el número de columnas
colnames(iris)  #Muestra los nombres de las columas
iris[1:10,]        # Podemos selecionar solo un subconjunto de datos por ejemplo diez primeras filas
iris[, 3:4]        # Podemos seleccionar solo ciertas columnas por ejemplo la 3 y 4
iris[1:10, 3:4]   #Seleccionamos las primeras diez filas de las culumnas 3 y 4
iris[, "Species"] #Tambien es posible referirse a una columna por su nombre, imprimiendo todas las filas de esa columna
#Tambien es posible acortarlo como iris$Species
iris[iris$Species == "setosa",] #También permite seleccionar filas mediante condiciones lógicas "filtrado"
#Es posible crear otras tablas a partir de una dada mediante el operador <-
mi.iris <- iris  # mi.iris es una copia de iris
head(mi.iris) #Muestra las 6 primeras filas junto con las respectivas columnas
ls()         # lista de objetos en memoria que hemos creado 
rm(mi.iris)  # borra el objeto mi.iris
ls()         #Comprobamos el borrado 
#Una forma de eliminar una columna es asignarle valor nullo NULL
mi.iris <- iris #Creamos de nuevo una copia de la tabla de datos iris
mi.iris$Petal.Area <- NULL #Les asignamos el valor nulo NULL es decir eliminamos la columna Petal.Area
head(mi.iris$Petal.Area ) #Muestra las 6 primeras filas junto con las respectivas columnas de Petal.Area 

mi.iris <- iris[order(iris$Petal.Length),] #La funcion order Nos ordena las dilas de la columna  de menor a mañor
head(mi.iris$Petal.Length) #Primero seis elementos de la columna ordenados 
mi.iris$Petal.Length #Todas las filas de la columna ordenados de menor a mayor
mi.iris <- iris[order(-iris$Petal.Length),] #Si queremos ordenar de mayor a menor solo colocamos -order el signo menos antes del order
mi.iris$Petal.Length #Todas las filas de la columna ordenados de mayor a menor
hist(iris$Sepal.Width)#Muestra los datos de sewpal en un histograma

Date <- as.Date("2021-3-16") #Converts strings to the Date class on R.
Date
my_string <- "This is \n an example string" 
cat(my_string)# Cat returns a character string in a readable format like in other programming languages.
my_number <- 1.1
ceiling(my_number) #The ceiling function rounds a numeric input to the next higher integer
time_1 <- "2021-03-16 00:00:00"
time_2 <- "2021-03-11 00:00:00"
difftime(time_1, time_2) #difftime calculates the diference between two dates

is.null(Date)# Checks if an object is null and returns a boolean value
log10(3) # The log function computes a logarithm of a given numeric value
R.Version() # Returns the R version and other parameters

sink("hello.txt")
my_string
sink() #The sink function allows users to export data to various filetypes
install.packages("stringr")
library("stringr")
nice_string <- "Cesar Velazquez"
str_remove(nice_string, "quez")# Removes matched patterns on a string



hist(iris$Sepal.Width, main = "iris: Histograma de la anchura de los sépalos",
     xlab = "Anchura del sépalo", ylab = "Frecuencia",
     col = "steelblue") #Histograma con titulos y color

barplot(table(iris$Species)) #Grafica de barras simples muestra segun la cantidad de especies em las columna Species
plot(iris$Petal.Length,iris$Petal.Width)#Grafico de dispersion donde puede apreciarce la relacion de varibles
boxplot(iris$Sepal.Width ~ iris$Species, col = "green",
        main = "Especies de iris\nsegún la anchura del sépalo") #Grafica de caja  
