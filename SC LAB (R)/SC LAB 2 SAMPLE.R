# Example 1
a <- 10
b <- 20

print(a > b)
print(a < b)
print(a == b)
print(a != b)

# Example 2
10 > 5
3 < 2
6 >= 6
4 <= 7

# Example 3
x <- c(2, 5, 8, 10)
x > 6

# Example 4
x <- c(3, 7, 12, 15)
x <= 10


############### Logical Operators ############################

# And (&)

# 1
x <- 8
x > 5 & x < 10

# 2
x <- 15
x < 10 & x > 20

# 3
x <- 10
y <- 20
(x == 10) & (y == 20)

x <- 1:6
(x > 2) & (x < 5)


# OR (|)

# 1
x <- 8

x > 10 | x == 8

# 2
x <- 1:6
(x > 2) | (x < 5)


# NOT (!)

x <- 8
!(x == 8)

x <- 10
!(x > 5)

x <- c(5, 12, 18, 3, 25)
!(x > 10)


# Missing data handling in R
# In R missing values are represented by "NA"

# Identify missing values
x <- c(10, 20, NA, 40, NA, 60)
is.na(x)

# Count missing values
x <- c(10, 20, NA, 40, NA, 60)
sum(is.na(x))

# Remove missing values
x <- c(10, 20, NA, 40, NA, 60)
na.omit(x)

# Replace missing values with mean
x <- c(10, 20, NA, 40, NA, 60)
x[is.na(x)] <- mean(x, na.rm = TRUE)
    ############ Conditional Execution ################
x
# if condition

# Example 1
# 1
x <- 5

if (x > 0) {
  print("Positive number")
}

# if-else conditional execution
# 1
x <- -8

if (x > 0) {
  print("Positive")
} else {
  print("Negative or Zero")
}

# 2
x <- 5

if (x == 3) {
  x <- x - 1
} else {
  x <- 2 * x
}

x

# 3
n <- 11

if (n %% 2 == 0) {
  print("Even number")
} else {
  print("Odd number")
}

# Conditional execution using ifelse()

# 1
x <- 1:10
print(x)

result <- ifelse(x < 6, x^2, x + 1)
print(result)

# 2
x <- c(-5, 10, 0, -2, 8)

ifelse(x > 0, "Positive", "Non-Positive")

# 3
x <- 1:10

ifelse(x %% 2 == 0, "Even", "Odd")

# 4
amount <- c(500, 1200, 800, 2500)

discount <- ifelse(amount >= 1000, 0.10 * amount, 0)
discount

# 5
x <- c(10, NA, 30, NA, 50)

ifelse(is.na(x), 0, x)

