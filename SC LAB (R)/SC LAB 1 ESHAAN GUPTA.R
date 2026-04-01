x<-seq(from=10, to=40, by = 0.5)
x
typeof(x)#(a) Check the type of vector.
I=sort(x)#(b) Arrange  the vector in decreasing and increasing order.
I
J=sort(x, decreasing=TRUE)
J
x[c(4,8)]#(c) Extract the 4th and 8th term from the vector.
x[c(5,10,7)]<-c(100,101,120)#(d) Change the 5th, 10th and 7th term with 100,101 & 120.
summary(x)#(e) Discuss descriptive measures for vector (d).
sd(x)
var(x)
# (a) To quit R
q()
# (b) To delete whole console window
# Shortcut: Ctrl + L
# (c) To install the package
install.packages("name")
# (d) To call the package from library
library(name)

# (e) To find out the descriptive measures
summary(vec)

# (f) To combine more than two vectors
combined <- c(vec1, vec2, vec3)

# (g) To run the code in console window
# Press 'Enter' or 'Ctrl + Enter' (in RStudio)

# (h) Path to arrange window (RStudio)
# Tools > Global Options > Pane Layout

# (i) Path to change font size (RStudio)
# Tools > Global Options > Appearance > Editor font size

# (j) To convert an object into a vector
as.vector(object)

# (k) To check for the existence of a vector
exists("vec")

# (l) To find the number of observations
length(vec)

# (m) To get help from console window
?mean  # or help(mean)

m<-seq(from=1, to=25,by=1)
mat=matrix(m, nrow=5, ncol = 5)
submat1=mat[1:4,1:4]
submat1
submat2=mat[3:5,4:5]
submat2
mat
mat[3,4]<-49
mat[3,4]<-49
det(mat)
inv=solve(mat)
inv
trans=t(m)
col5=mat[,5]
col5
row2=mat[2,]
row2
n<-seq(from=26,to=50, by=1)
mat2= matrix(n, nrow=5,ncol=5)
mat2
mul=mat%*%mat2
mul
iden<-diag(3)
iden
data<-c(11,2,3,4,5,3,5,2,1,5,6,10,21,2,22,10,33,32,31,30,25,26,27,14,15)
datamatrix <- matrix(data, nrow = 5, byrow = TRUE)
datamatrix
row3 <- datamatrix[3, ]
summary(row3)
sd(row3)
# (a) Understand description
library(MASS)
?painters

# (b) Print data
print(painters)

# (c) Structure of data
str(painters)

# (d) Extract each variable
comp <- painters$Composition
draw <- painters$Drawing
colr <- painters$Colour
expr <- painters$Expression
schl <- painters$School

# (e) Descriptive measures
summary(painters)

# (f) Check variable types
# Use sapply to check all at once
sapply(painters, class) 
# Note: School is usually a factor, others are numeric/integer.

# (g) Extract names
rownames(painters) # Names of painters
colnames(painters) # Names of variables

# (h) Top six rows
head(painters)
painters["Da Udine", "Composition"]
attach(painters)
painters
detach(painters)
