
### Exercise 1
# **(Answer)** Plot type - Geom you should use: 

# Plot type  | Geom
# ---------- | -----------
# Line chart | `geom_line()`
# Boxplot    | `geom_boxplot()`
# Histogram  | `geom_hist()`
# Area chart | `geom_area()`

### Exercise 2
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) + 
  geom_point() + 
  geom_smooth(se = FALSE)

# **(Answer)** As you can see in the previous plot, this code produces a scatter plot with `displ` on the x axis and `hwy` on the y axis and the points are coloured according to the `drv` variable. Also, there is a smooth line created with `geom_smooth` with the standard errors setted to false (`se = FALSE`) and fitted according to `drv`. 

### Exercise 3

# _I am no sure if my answer is one hundred percent correct for the last question of this exercise._

# **(Answer)** `show.legend = FALSE` hides the legend for the plot. If you do not specify this, the default value is going to be true (plot will show the legend box, if there is more than one category). The book used it earlier in this chapter to create these 3 plots:

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, group = drv))

ggplot(data = mpg) +
  geom_smooth(
    mapping = aes(x = displ, y = hwy, color = drv),
    show.legend = FALSE
  )

# In this case, a legend just in the last plot is not a good idea because in the two first plots there is no legend for the plot. The legend would make a irregular presentation and would show a irrelevant information (out of the scope of the goal that these 3 plots have).

### Exercise 4
# The answer for this question is inside the exercise 2 answer. The `se` argument used in `geom_smooth()` is used to specify if you want to plot with the standard errors (default or set `se = TRUE`) or not (`se = FALSE`). In the plot, the standard error is the 'grey shadow'.

### Exercise 5
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point() + 
  geom_smooth()

ggplot() + 
  geom_point(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_smooth(data = mpg, mapping = aes(x = displ, y = hwy))

# **(Answer)** As you can see, these two codes produce idendical plots. The first code specifies the data and mapping inside `ggplot()` function, which will automatically be used by geoms functions (in this case, `geom_point()` and `geom_smooth()`). In the second code, the data and mapping definition are specified in both geoms (duplicated code, which is bad even if works). 

### Exercise 6
# **(Answer)** 

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point() + 
  geom_smooth(se = FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point() + 
  geom_smooth(mapping = aes(group = drv), color = 'blue', se = FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(colour = drv)) + 
  geom_smooth(mapping = aes(group = drv, colour = drv), se = FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(colour = drv)) + 
  geom_smooth(colour = 'blue', se = FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(colour = drv)) + 
  geom_smooth(colour = 'blue', se = FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(colour = drv)) + 
  geom_smooth(colour = 'blue', se = FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(colour = drv)) + 
  geom_smooth(mapping = aes(linetype = drv), colour = 'blue', se = FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(colour = drv))
  