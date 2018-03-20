
# Chapter 4 - Workflow Basics

## 4.4 Exercises

### Exercise 1
my_variable <- 10
my_varıable


#**(Answer)** This code does not work because there is an error in the variable name when used to print (my_var**ı**able != my_variable).


### Exercise 2
#See below the correct implementation to this code:
  
library(tidyverse)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

filter(mpg, cyl == 8)
filter(diamonds, carat > 3)


### Exercise 3

#  **(Answer)** _If you are a Mac user (like me), you should type Option + Shift + K_. 
#This is a keyboard shortcut to check the quick reference for keyboard shortcuts - _inception!_. 
#Besides, this reference can be found in the menu bar (Tools -> Keyboard Shortcuts Help). 
#_However, use a keyboard shortcut is much more awesome.
# I encourage you to make an effort to use **much more** your keyboard than your mouse. 
#In the matter of time you will code like a pro (and this will impress your friends and beautiful girls, of course)._
