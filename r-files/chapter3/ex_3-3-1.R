
### Exercise 1

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = "blue"))
# The **color** argument is not in the correct place. 
# The **color** argument is included inside the **mapping** argument so 
# it is treated as an aesthetic, which receives a variable 
# (like we used **class** as argument in previous exercise). 
# In this case, the **color** argument is interpreted as a variable with only one value (which is "blue" in this case).

#If the goal is to plot all these points using blue, the correct code is:
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy), color = "blue")


### Exercise 2
# If you are not able to classify each variable as categorical or continuous by checking the description of each variable (by typing **?mpg**) you can print the data frame and R will answer this for you (another way to check this information is using the glimpse() function). 
mpg
# As you can see, the information is given at top of each column within '<>'. If the variable is categorical, it will have a class of 'character' (represented as **<chr>**). So, once you know where to find this is information is easy to anwser which variable is categorical and which is continuous.  

# **model**: categorical
# **displ**: continuous
# **year**: continuous
# **cyl**: continuous
# **trans**: categorical
# **drv**: categorical
# **cty**: continuous
# **hwy**: continuous
# **fl**: categorical
# **class**: categorical

### Exercise 3
# _Using the varible **cty** (city miles per gallon) - which is a continuous variable._
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, colour = cty))
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, size = cty))
# When mapped to colour: the continuous variable uses a scale that varies using tons of blue (light to dark). 
# When mapped to size: the continuous variable uses a scale that varies using different sizes.
# These information is easy to verify by checking these two previous plots. 
# However, when mapped to shape, R will give an error (a continuous variable can not be mapped to shape). This is because shapes does not have a natural order.

###  Exercise 4
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, colour = displ, size = hwy))
#Mapping one variable to multiple aesthetics is not a good idea because is redundant. 
# Use different variables and the plot will show more information about your dataset. 
# The next plot uses four different variables in aesthetics, which gives useful aditional 
# information when compared to all the previous plots.
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, colour = cty, size = cyl))

### Exercise 5
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, shape = drv), stroke = 5)
# The **stroke** aesthetic is used to modify the width of the border. 

### Exercise 6
# The colour indicates if each **displ** value is less than 4 or not. The ggpplot function will assign the result of this expression (displ < 5, which is going to be true or false) to a temporary variable and then will assign a colour for values > 4 and a different colour for values < 4). This is easy visualize by checking the results of this code:
ggplot(data = mpg) + geom_point(mapping = aes(x = hwy, y = cyl, colour = displ < 4))



