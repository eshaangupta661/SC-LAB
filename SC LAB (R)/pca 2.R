# Load libraries
library(ggplot2)
library(factoextra)

# Load dataset
data(iris)

# View data
head(iris)

# Remove categorical column (Species)
iris_numeric <- iris[, -5]

# Standardize data
iris_scaled <- scale(iris_numeric)

# Perform PCA
pca_iris <- prcomp(iris_scaled, center = TRUE, scale. = TRUE)

# Summary
summary(pca_iris)

# Eigenvalues
eig_val <- pca_iris$sdev^2
eig_val

# Variance explained
prop_var <- eig_val / sum(eig_val)
prop_var

# Scree Plot
fviz_eig(pca_iris, addlabels = TRUE)

# Biplot
fviz_pca_biplot(pca_iris,
                label = "var",
                habillage = iris$Species,
                addEllipses = TRUE,
                repel = TRUE)

# Variables Plot
fviz_pca_var(pca_iris,
             col.var = "contrib",
             gradient.cols = c("blue", "yellow", "red"),
             repel = TRUE)

# Individuals Plot
fviz_pca_ind(pca_iris,
             habillage = iris$Species,
             addEllipses = TRUE,
             repel = TRUE)
