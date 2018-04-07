
## 5.5.2 Exercises

### Exercise 1
#> Currently `dep_time` and `sched_dep_time` are convenient to look at, but hard to compute with because they’re not really continuous numbers. Convert them to a more convenient representation of number of minutes since midnight.

#**(Answer)** Finally: fix this horrible representation. 

mutate(flights,
       dep_time_mins = (dep_time %/% 100)*60 + (dep_time %% 100),
       sched_dep_time_mins = (sched_dep_time %/% 100)*100 + (sched_dep_time %% 100)
)

### Exercise 2
#  > Compare `air_time` with `arr_time - dep_time`. What do you expect to see? What do you see? What do you need to do to fix it?
  
#  **(Answer)** At first time we could expect to see the `air_time` by doint this difference between `air_time` and `dep_time`. However, since `dep_time` are in many different time zones, this first assumption is not true. 

### Exercise 3
#> Compare `dep_time`, `sched_dep_time`, and `dep_delay`. How would you expect those three numbers to be related?
  
#  **(Answer)** Let's check these three variables:

select(flights, dep_time, sched_dep_time, dep_delay)
#At first time you can think that`dep_time` minus `dep_delay` is equal to `sched_dep_time`. However this is not true for all our entries (thanks to time zones, again). 

### Exercise 4
#> Find the 10 most delayed flights using a ranking function. How do you want to handle ties? Carefully read the documentation for `min_rank()`.

#**(Answer)** First, let's order by dep_delay (from maximum delay to minimum delay):
  
arrange(flights, min_rank(-dep_delay))

#Cool, right? As you can see, to order from maximum to minimum delay you should use `min_rank()` with negative `dep_delay`.

#Now, to find the 10 most delayed flights we should filter by delay 

arrange(flights, min_rank(-dep_delay)) %>%
  filter(min_rank(-dep_delay) <= 10)

#However, for this situation is better to create a new column to store the delay ranking and then use arrange and filter functions:
  
mutate(flights, rank_dep_delay = min_rank(-dep_delay)) %>%
  arrange(rank_dep_delay) %>%
  filter(rank_dep_delay <= 10)

### Exercise 5
#> What does 1:3 + 1:10 return? Why?
  
#  **(Answer)** Return the sum of two vectors (1 to 3 and 1 to 10):
  
1:3 + 1:10

#However, this is not a smart thing to do. As you can see in the warning message, the two objects are not in the same size/the size of vector with more elements is not divisible by the size of the vector with less elements. For a situation like that (vectors with different sizes), the shorter vector is going to be reused. So, what this code is doing is: `(1+1, 2+,2, 3+3, 4+1, 5+2, 6+3, 7+1, 8+2, 9+3, 10+1)`.

### Exercise 6
#> What trigonometric functions does R provide?
  
#  **(Answer)** The answer for this question is in helper for trigonometric functions (`help('Trig')`).
