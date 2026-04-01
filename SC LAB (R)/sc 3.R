# Q1
i <- 1
repeat{
  print(i)
  i <- i + 1
  if(i > 8){break}
}

# Q2
i <- 1
repeat{
  print(i^2)
  i <- i + 1
  if(i^2 > 50){break}
}

# Q3
i <- 1
sum_value <- 0
repeat{
  sum_value <- sum_value + i
  i <- i + 1
  if(sum_value > 40){break}
}
print(sum_value)

# Q4
i <- 1
repeat{
  value <- 3*i - 1
  print(value)
  i <- i + 1
  if(value > 50){break}
}

# Q5
i <- 2
sum_value <- 0
repeat{
  sum_value <- sum_value + i
  i <- i + 2
  if(sum_value > 150){break}
}
print(sum_value)

# Q6
i <- 1
sum_value <- 0
repeat{
  sum_value <- sum_value + 1/i
  i <- i + 1
  if(sum_value > 5){break}
}
print(sum_value)

# Q7
x <- 2
n <- 1
repeat{
  value <- (1+x)^n
  print(value)
  n <- n + 1
  if(value > 300){break}
}