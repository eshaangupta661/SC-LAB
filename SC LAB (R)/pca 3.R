# Load libraries
library(readxl)
library(factoextra)

# Load dataset
pizza <- read_excel("D:/Eshaan/SC LAB/Pizza Data Set.xlsx")

# Remove non-numeric columns
  pizza_numeric <- pizza[, -c(1,2)]  # remove brand + id

# Standardize
pizza_scaled <- scale(pizza_numeric)

# PCA
pca_pizza <- prcomp(pizza_scaled, center = TRUE, scale. = TRUE)

# Summary
summary(pca_pizza)

# Plots
fviz_eig(pca_pizza, addlabels = TRUE)

fviz_pca_biplot(pca_pizza,
                habillage = pizza$brand,
                addEllipses = TRUE,
                repel = TRUE)

fviz_pca_varar(pca_pizza,
             col.var = "contrib",
             gradient.cols = c("blue","yellow","red"))

fviz_pca_ind(pca_pizza,
             habillage = pizza$brand,
             addEllipses = TRUE)
