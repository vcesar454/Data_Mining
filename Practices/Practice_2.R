
# 1- print (), prints iris being a table with 150 rows for practices that comes by default
print (iris)


# 2- plot () represents graphically the table that is, it graphs the data
plot (iris)


# 3- summary () provides us with a statistical summary of the columns
summary (iris)


# 4- str () is a "Textual representation" of the object, that is, it provides the table information in a short form
str (iris)


# 5- The head () function prints the first six rows of the table
head (iris)


# 6- The tail () function prints the last six rows of the table
tail (iris)


# 7- The symbol of? before the function shows us how it works you can also with help
? summary


# 8- dim () returns us how many rows and columns we have
dim (iris)


# 9- nrow () Show only the number of rows in the table
nrow (iris)


# 10- ncol () Show only the number of columns in the table
ncol (iris)


# 11- colname () Shows the names of the columns of the table
colnames (iris)


# 12- Allows you to select only a subset of data, for example the first ten rows
iris [1:10,]


# 13- Allows you to select only certain columns, for example 3 and 4
iris [, 3: 4]


# 14- Allows the selection of the first ten rows of columns 3 and 4
iris [1:10, 3: 4]


# 15- Allows referring to a column by its name, printing all the rows of that column
#It is also possible to shorten it as iris $ Species
iris [, "Species"]


# 16- It allows selecting rows by means of "filtering" logical conditions
iris [iris $ Species == "setosa",]


#It is possible to create other tables from a given one using the <- operator
# my.iris is a copy of the original table iris
my.iris <- iris


#head () shows the first 6 rows together with the respective columns
head (my.iris)


# 17- ls () prints a list of objects in memory that we have created
ls ()


# 18- rm () deletes an object stored in memory for example the object mi.iris
rm (my.iris)


#We check the deletion
ls ()


#One way to delete a column is to assign it null value NULL
#Create a copy of the iris data table again
my.iris <- iris


# 19- We assign them the null value NULL, that is, we eliminate the Petal column.Area
my.iris $ Petal.Area <- NULL


#head () Shows the first 6 rows together with the respective columns of Petal.Area
head (mi.iris $ Petal.Area)


# 20- The order () function, sorts the rows of the column from smallest to largest
my.iris <- iris [order (iris $ Petal.Length),]


#head () prints the first six elements of the column, in this case already sorted
head (mi.iris $ Petal.Length)


#Show all the rows in the column that are already ordered from smallest to largest
my.iris $ Petal.Length


#If we want to order from highest to lowest, we only place -order () the minus sign before order
mi.iris <- iris [order (-iris $ Petal.Length),]


#Show all rows in the column ordered from highest to lowest
my.iris $ Petal.Length


# 21- hist (), Display the sepal data in a histogram plot
hist (iris $ Sepal.Width)


# 22- Converts strings to the Date class on R.
Date <- as.Date ("2021-3-16")
>>>>>>> 24b46bdb39c2cd2b2cac7d8e429190c2b49454e5
Date


my_string <- "This is \ n an example string"
# 23- Cat returns a character string in a readable format like in other programming languages.
cat (my_string)


my_number <- 1.1
# 24- The ceiling function rounds a numeric input to the next higher integer
ceiling (my_number)


time_1 <- "2021-03-16 00:00:00"
time_2 <- "2021-03-11 00:00:00"

# 25- difftime calculates the difference between two dates
difftime (time_1, time_2)


# 26 Checks if an object is null and returns a boolean value
is.null (Date)


# 27- The log function computes a logarithm of a given numeric value
log10 (3)


# 28- Returns the R version and other parameters
R.Version ()


sink ("hello.txt")
my_string

# 29- The sink function allows users to export data to various filetypes
sink ()

install.packages ("stringr")
library ("stringr")
nice_string <- "Cesar Velazquez"


# 30- Removes matched patterns on a string
str_remove (nice_string, "quez")


#hist () Histogram with titles and color
hist (iris $ Sepal.Width, main = "iris: Histogram of the width of the sepals",
      xlab = "Sepal width", ylab = "Frequency",
      col = "steelblue")


# 31- barplot () Show a simple bar graph according to the number of species in the Species column
barplot (table (iris $ Species))


#plot () Shows a scatter plot where the relationship of variables can be seen
plot (iris $ Petal.Length, iris $ Petal.Width)


# 32- boxplot () Show the data in a box plot
boxplot (iris $ Sepal.Width ~ iris $ Species, col = "green",
         main = "Iris species \ nbased on sepal width")
