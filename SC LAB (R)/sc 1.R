  # Q1
for(i in 1:12){
  print(3*i + 2)
}

# Q2
x <- c(4,9,16,25,36)
for(i in x){
  print(sqrt(i))
}

# Q3
x <- c(10,25,7,18,42,5)
min_value <- x[1]

for(i in 2:length(x)){
  if(x[i] < min_value){
    min_value <- x[i]
  }
}
print(min_value)

# Q4
for(i in 1:50){
  if(i %% 4 == 0){
    if(i %% 8 != 0){
      print(i)
    }
  }
}

# Q5
for(i in 1:15){
  if(i %% 2 != 0){
    print(i^3)
  }
}

# Q6
n <- 6
fact <- 1
for(i in 1:n){
  fact <- fact * i
}
print(fact)

# Q7
sum_value <- 0
for(i in 1:50){
  if(i %% 2 == 0){
    sum_value <- sum_value + i
  }
}
print(sum_value)

# Q8
x <- c(14,27,35,9,42,18)
max_value <- x[1]

for(i in 2:length(x)){
  if(x[i] > max_value){
    max_value <- x[i]
  }
}
print(max_value)

