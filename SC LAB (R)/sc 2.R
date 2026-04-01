# Q1
i <- 1
while(i <= 10){
  print(i)
  i <- i + 1
}

# Q2
i <- 2
while(i < 20){
  print(i)
  i <- i + 2
}

# Q3
n <- 1
while(n^2 <= 150){
  n <- n + 1
}
print(n)

# Q4
i <- 1
sum_value <- 0
while(i <= 10){
  sum_value <- sum_value + i
  i <- i + 1
}
print(sum_value)

# Q5
num <- 3
while(num <= 50){
  print(num)
  num <- num + 4
}

# Q6
i <- 1
while(i^3 <= 300){
  print(i^3)
  i <- i + 1
}

# Q7
num <- 8642
sum_value <- 0
while(num > 0){
  digit <- num %% 10
  sum_value <- sum_value + digit
  num <- num %/% 10
}
print(sum_value)