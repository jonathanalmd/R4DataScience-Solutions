
### Exercise 1

#**(Answer)** Let's plot a stacked bar chart using diamonds data:

bar <- ggplot(data = diamonds) + 
geom_bar(mapping = aes(x = factor(1), fill = cut))
print (bar)

#As you can see in this last code, a variable called `bar` is receiving a plot and then this variable is printed using `print()`. Now, with `bar` variable storing a plot, is easier to transform the bar chart. Let's transform a bar chart into a pie chart (the `coord_polar()` documentation shows how to create a pie chart and many others cool graphs):

bar + coord_polar(theta = 'y')

### Exercise 2

#**(Answer)** `labs()` is used to modify axis, legend and plot labels. You can use `labs(y = 'labely', x = 'labelx', title = 'Awesome Plot Title'`)

### Exercise 3

#**(Answer)** Checking the documentation you will notice that `coord_quickmap()` function is a 'faster' option for `coord_map()`, which projects a portion of the earth (approximately spherical) onto a flat 2D plane using any projection defined by the `mapproj` package. So, the `coord_quickmap()` is a quick approximation that does preserve straight lines _and works best for smaller areas closer to the equator_.

### Exercise 4

ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) +
  geom_point() + 
  geom_abline() +
  coord_fixed()

#**(Answer)** The plot tells me that the relationship between `cty` and `hwy` is linear. `coord_fixed()` is important to make sure that the line (created with `geom_abiline()`) is at 45 degree angle and then make easier to compare the data. 
