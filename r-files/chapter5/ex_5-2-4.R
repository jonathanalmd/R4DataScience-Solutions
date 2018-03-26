library('nycflights13')
library('tidyverse')

## 5.2.4 Exercises

### Exercise 1
filter(flights, arr_delay >= 120)

filter(flights, dest %in% c('IAH','HOU'))

filter(flights, carrier %in% c('UA','AA', 'DL'))

filter(flights, month %in% c(7:9))

filter(flights, arr_delay > 120 & dep_delay <= 0)

filter(flights, dep_delay >= 60 & air_time > 30)

filter(flights, dep_time == 2400 | dep_time < 600)

### Exercise 2

#  **(Answer)** `between()` is used to check if the variable is between a range of values (`x >= value1 & x <= value2`). You can use between to filter the flights between months, check this following code:
  
filter(flights, between(month, 7, 9))

### Exercise 3

#  **(Answer)** Is pretty easy to check this by using `is.na(var)`. 

filter(flights, is.na(dep_time))
count(filter(flights, is.na(dep_time)))

#As you can see above, 8225 flights have a missing `dep_time`. More than that, is possible to notice that there is more `NA` values for more variables (`dep_delay`, `arr_time`, `arr_delay`). Puting these 'blocks' together, we can conclude that these 8255 entries are cancelled flights.

### Exercise 4
#  **(Answer)** That is easy. It's beacause `NA^0` must be one (anything zero power is one).

NA^0

#**(Answer)** It's because is a `OR` operator. It will test if `NA` is `TRUE` and if not, will check if `TRUE` is `TRUE` (it is). Then, once `TRUE` is `TRUE`, this code returns `TRUE`. _For logical OR operator, the results is TRUE if one (or more) variables is TRUE_

NA | TRUE

#  **(Answer)** It's because to get `TRUE` as result for a logical `AND` operator **all** the variables involved to this operation **must be** `TRUE`. Anything `AND` `FALSE` will always going to be `FALSE`. 

FALSE & NA

# Besides, `TRUE & NA` or `FALSE | NA` are missing.
