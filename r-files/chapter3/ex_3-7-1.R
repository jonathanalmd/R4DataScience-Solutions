
## 3.7.1 Exercises

### Exercise 1

# **(Answer)** By typing `?stat_summary()` you are able to see the documentation for this function. So, is easy to notice that the default `geom` associated with `stat_summary()` is the `geom_pointrange()` geom, which uses `ìdentity` as the dafault `stat`. To use this `geom` to plot a `summary`, just override the default stat by using `stat = 'summary'` as follows:
  
ggplot(data = diamonds) + 
  geom_pointrange(
    mapping = aes(x = cut, y = depth),
    stat = 'summary'
  )

#Howerver, as you can notice that this last plot is a little bit different compared to the plot created with `stat_summary()`. It is because the default for `stat_summary()` is to use `mean` and `sd` to plt (the point and the range of the line). To fix this, just add the values used in the example (`fun.min = min`, `fun.max = max` and `fun.y = median`):
  
ggplot(data = diamonds) + 
  geom_pointrange(
    mapping = aes(x = cut, y = depth),
    stat = 'summary',
    fun.ymin = min,
    fun.ymax = max,
    fun.y = median
  )


### Exercise 2

#  **(Answer)** The answer for this question is inside `geom_col()` documentation. By typing `?geom_col()` - _I encourage you to always read the documentation for the function you want to use_ - is possible to see there are two types of bar charts: `geom_bar()` makes the height of the bar proportional to the number of classes in each group (or if the `weight` aesthetic is supplied, the sum of the `weights`). If you want the heights of the bars to represent values in the data, use `geom_col()` instead. `geom_bar()` uses `stat_count` by default (it counts the number of cases at each `x` position). In other hand, `geom_col()` uses `stat_identity`, which leaves the data as is. 

### Exercise 3

#  **(Answer)** The answer to this question is inside `ggplot2` documentation. I highly recommend to read the `ggplot2` documentation available [**here**](docs.ggplot2.org).

### Exercise 4

# **(Answer)** _This is the last time I am going to recommend you to always read the documentation for the functions you use._ The answer for this question is easy to find by checking `stat_smooth()` documentation. The variables computed by `stat_smooth()` are:
  
#  * `y`: predicted value
#* `ymin`: lower pointwise confidence interval around the mean
#* `ymax`: upper pointwise confidence interval around the mean
#* `se`: standard error

#And the arguments used to control its behaviour are:
  
#* `mapping`
#* `data`
#* `position`
#* `...`
#* `method`
#* `formula`
#* `se`
#* `na.rm`
#* `show.legend`
#* `inherit.aes`
#* `geom, stat`
#* `n`
#* `span`
#* `fullrange`
#* `level`
#* `method.args`

#The most important argument is `mapping`, which determines which method will be used to calculate the predictions and confidence interval. To check the description for each argument, type `?stat_smooth()`.

### Exercise 5
#  _I am no sure if my answer is one hundred percent correct for this exercise._

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, y = ..prop..))
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = color, y = ..prop..))

#**(Answer)** `group = 1` is used to set the proportion (y axis) correctly. As you can see in these two plots above, the proportion for all diamonds are equals one (and this is not what we want). So the correct code would be something like this:
  
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, y = ..prop.., group = 1))
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = color, y = ..prop.., group = color))
