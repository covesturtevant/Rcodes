# This is a comment. The color is green, like in Matlab
a <- 1 # Assign a = 1, there is no output suppression character
b <- 3 # Assign b = 3

eq <- a==b # logical variable of whether a=b

# Output eq to the screen, first converting to a string
writeLines(toString(eq))

# Output what working directory we are in. Note: to run a function without inputs, you must end it with ()
writeLines(getwd())

# Set the working directory using absolute address. Note that strings are also green, but a darker shade
setwd("C:/Users/csturtevant/Documents/R")

# Set working directory using relative address
setwd("Rcodes/LearningR")

# Now set the working directory relative to the default directory
setwd("~/R/Rcodes/LearningR")

# Run this file using local address
source("testSyntax.R")

# List all the objects in the environment
ls()

# Let's get rid of a
rm(a)

# Let's clear the workspace, do this by setting the list parameter of the rm function 
rm(list=ls())

# Let's make some vectors (c stands for combine)
a <- c(1,2,3,4)
b <- c(2,4,6,8)

# Add them
c <- a+b

# Did we overwrite the function c? Nope.
d <- c(3,6,9,12)

# Now combine a, b, and c into one vector
d <- c(a,b,c)

# Can also combine strings
s <- c("hello","mother","and","father")

# NaN is the same as in Matlab
nn <- NaN

# Make a column vector
m <- matrix(1:6,1,6)

# Can also reshape a vector into a matrix (column-wise or row-wise)
v <- seq(from=1,to=100,by=2)
mc <- matrix(v,length(v)/2,2) # column-wise
mr <- matrix(v,length(v)/2,2,byrow=TRUE)  # column-wise

# Can also do this using the combine command (column-wise by default, but can use byrow = TRUE)
dim(m) <- c(2,3) # reshapes m into 2 rows and 3 columns

# Can concatenate rows or columns using rbind and cbind
abr = rbind(a,b)
abc = cbind(a,b)

# Multiply vectors, always element-wise
e <- a*b

# Access elements in a matrix
m[2,3]
m[1:2,1]
m[1,c(1,3)]


