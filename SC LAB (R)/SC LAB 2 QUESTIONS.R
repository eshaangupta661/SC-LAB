#Q1
x <- c(12, NA, 25, 18, NA, 30, 10, NA)
x  
is.na(x)
which(is.na(x))
sum(is.na(x))
na.omit(x)

x <- c(12, NA, 25, 18, NA, 30, 10, NA)
x[is.na(x)] <- mean(x, na.rm = TRUE)
x

x <- c(12, NA, 25, 18, NA, 30, 10, NA)
x[is.na(x)] <- 0
x
#Q2
v <- c(5,12,18,3,25,8,15)
v>10
v[v>10]

v<10
v[v<10]

v>=10 & v<=20
v[v>=10 & v<=20]

which(v>10)

which(v%%2 == 0)
#Q3
x <- 10
y <- 20
(x == 10) & (y == 20)
(x == 5) & (y == 20)
(x > 5) & (y < 10)
!(x == 10)
!(y == 10)
#Q4
z <- c(2,6,9,12,15,18,21,25)
z[z>10 & z%%3 == 0]
z[z<10 | z%%5 == 0]
z[!z%%2 == 0]
sum(z>15)

