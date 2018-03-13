
## 3.8.1 Exercises

### Execise 1

ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) + 
  geom_point()

#**(Answer)** Check this plot using same data:
  
ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) + 
  geom_jitter()

#There is a relevant difference between them, right? It is because there are a lot of observations for each combination of `cty` and `hwy`. So, for this situation `geom_jitter()` is a great option, as you can see in our last plot above. 

### Exercise 2

#  **(Answer)** As you can read in `position_jitter()` (or `geom_gitter()`) documentation, the parameters used to control the amount of jittering are:
#  * **width:** amount of horizontal jitter
#* **height:** amount of vertical jitter
#The jitter is added in both positive and negative directions then the total spread is twice the value specified here.
#The default value is 40% of the resolution of the data. You can use with `geom_point(position = position_jitter(height, weight))` or with `geom_jitter(height, width)`.

### Exercise 3

#**(Answer)** Let's plot two graphs, one using `geom_jitter()` and one using `geom_count()`:

ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) + 
  geom_jitter()
ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) + 
  geom_count()

#Is really easy to notice the difference between the two. In exercise 1 we verified that `geom_jitter()` adds 'noise' to our graph (both horizontally and vertically) and is easy to see this in the plot. As you can see in the last plot presented `geom_count()` makes agroupation of points and adds a legend to show the scale. In spite of the difference between the two functions, both are useful to understand better where are the concentrations of your dataset.

### Exercise 4

#**(Answer)** By checking the `geom_boxplot()` documentation you are able to verify that the default position for `geom_boxplot()` is `dodge`. Let's plot using `geom_boxplot()` without any custom argument:
  
ggplot(data = mpg, aes(x = drv, y = hwy, color = class)) +
  geom_boxplot()

#As you can see in this plot, the different classes from `drv` are side by side and it is because `geom_boxplot()` uses `dodge` as default position. 

#Now, let's plot overriding the default position adjustment:

ggplot(data = mpg, aes(x = drv, y = hwy, color = class)) +
  geom_boxplot(position = "identity")

#In this last plot, the different classes from `drv` are not side by side anymore, they are overlapped! This is because now the `geom_boxplot()` is using `identity` as position adjustment insted of `dodge`. 

