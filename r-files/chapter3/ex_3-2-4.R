library(tidyverse)
mpg = ggplot2::mpg
mpg

# Exercise 1
ggplot(data = mpg)

# Exercise 2
nrows = nrow(mpg)
ncols = ncol(mpg)
print(nrows)
print(ncols)

# Just to check
glimpse(mpg)


# Exercise 3
mpg['drv']
# There are 3 possible values for __drv__ variable. The **drv** variable describes the traction control system. 


# Exercise 4
ggplot(data = mpg) + geom_point(mapping = aes(x = hwy, y = cyl, colour = class))
# We add a definition of the data used in x,y axis and add geom_point function mapping these points. 
# Here we are using aes(colour = class) (to associate the name of the aesthetic with a variable to display) 
# to plot using a different colour for each class present in our data frame 
# (car type: 2seater, compact, midsize, minivan, pickup, subcompact, suv).

# Exercise 5
ggplot(data = mpg, aes(x = class, y = drv)) + geom_point()
# This plot is not useful because **class** and **drv** are factor variables. 
# Each possible value of these two variables is limited by a set 
# set (r, f and 4 are the possible values for **drv**  and 2seater, compact, midsize, minivan, pickup, subcompact and suv are the possible values for **class**).
# This plot is pretty useless to perform a data analysis.





