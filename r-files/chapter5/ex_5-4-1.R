
## 5.4.1 Exercises

### Exercise 1 

#**(Answer)** The most basic way to select variables is by selecting by their names:
  
select(flights, dep_time, dep_delay, arr_time, arr_delay)

#You also can use some help functions (like `starts_with()` and `matches()`) to select these variables:
  
select(flights, starts_with('de'), starts_with('ar'))

select(flights, starts_with('dep'), starts_with('arr'))

select(flights, starts_with('dep_'), starts_with('arr_'))

#Or if you want to use regex, which is much more awesome:
  
select(flights, matches('^(dep|arr).*(time|delay)$'))

#Which `^` means that the string must start with `dep` OR `arr` and `$` means that the string must end with `time` OR `delay` (`.` can be any character and `*` means that any character (`.`) can repeat many times).

### Exercise 2

#  **(Answer)** Let's try:

select(flights, dep_time, dep_time)

select(flights, dep_time, dep_time)

#As you can see, we got the same result for both. So, `select()` function ignores the repeated variables.

### Exercise 3


#**(Answer)** Let's try:
  
select(flights, one_of(vars))

#With `one_of` you can use vectors (vector `vars` in this particular example) with `select()` to select particular variables.

### Exercise 4

select(flights, contains("TIME"))

#**(Answer)** I am not surprised at all. `contains()` function uses downcase as default (ignore uppercase). In most of datasets the variable names are all downcase so I think is a nice default definition. However, if you want to change this default instead of to change (downcase) all the variable names from your dataset, you can use `select()` like in this code below:
  
select(flights, contains("TIME", ignore.case = FALSE))

#As you can see, there is no results when we use `select()` with case sensitive (considering uppercase).

