
a <- c(85, 90, 75, 65, 55, 25, 45, 66, 80, 76, 70, 90, 82, 35, 45)

for (m in a){
  if (m >= 80) {
  print("A")
} else if (m<80 & m >= 60) {
  print("B")
} else if (m<60 & m >= 40) {
  print("C")
} else {
  print("F")
}

u <- -2:5
ifelse(u < 0, 2 * u + 1, 
                    ifelse(u <= 2, u^2, 
                           3 * u))
  
v <- 1:100
ifelse(v %% 2 == 0, v^2, v^3)

