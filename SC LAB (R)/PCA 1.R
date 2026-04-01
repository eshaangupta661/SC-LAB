# ============================================================
# Principal Component Analysis (PCA) in R
# ============================================================

# 1. Install required packages
install.packages("readxl")
install.packages("ggplot2")
install.packages("factoextra")

# 2. Load libraries
library(readxl)
library(ggplot2)
library(factoextra)

# 3. Import Excel dataset
PCA_Data_ <- read_excel("D:/Eshaan/SC LAB/PCA Data .xls")

# 4. View dataset
View(PCA_Data_)

# 5. Convert to data frame
data <- data.frame(PCA_Data_)

# 6. Remove first column if it contains names/labels
data_numeric <- data[, -1]

# 7. Standardize the data
data_scaled <- scale(data_numeric)

# 8. Perform PCA
pca_result <- prcomp(data_scaled, center = TRUE, scale. = TRUE)

# 9. PCA Summary
summary(pca_result)

# 10. Eigenvalues
eigenvalues <- pca_result$sdev^2
print(eigenvalues)

# 11. Proportion of variance explained
prop_var <- eigenvalues / sum(eigenvalues)
print(prop_var)

# 12. Loadings (Principal Components)
loadings <- pca_result$rotation
print(loadings)

# 13. PCA Scores
scores <- pca_result$x
head(scores)

# 14. Scree Plot
fviz_eig(pca_result, addlabels = TRUE)

# 15. PCA Biplot
fviz_pca_biplot(pca_result,
                repel = TRUE,
                col.var = "red",
                col.ind = "blue")

# 16. Variables Plot
fviz_pca_var(pca_result,
             col.var = "contrib",
             gradient.cols = c("blue", "yellow", "red"),
             repel = TRUE)

# 17. Individuals Plot
fviz_pca_ind(pca_result,
             col.ind = "cos2",
             gradient.cols = c("blue", "yellow", "red"),
             repel = TRUE)

# ===================== Practice Questions =====================
# Q1. Perform PCA analysis for iris data in R.
# Q2. Perform PCA analysis and interpret the results using Pizza Data.