
## 5.3.1. Exercises

### Exercise 1

#**(Answer)**
  
  ### Exercise 2

#**(Answer)** To get the most delayed flights you should use `arrange()` with `desc()` in `dep_delay` variable:
  
arrange(flights, desc(dep_delay))

#To find the flights that left earliest, just use `arrange()` with `dep_delay` variable:
  
arrange(flights, dep_delay)

### Exercise 3

#**(Answer)**
arrange(flights, desc(air_time))

### Exercise 4

#  **(Answer)** To find the flights that travelled the longest distance you should use `arrange()` and `desc()` with `distance` variable:
  
arrange(flights, desc(distance))

#And the flights that travelled the shortest distance, just use `arrange()` with `distance`:
  
arrange(flights, distance)
