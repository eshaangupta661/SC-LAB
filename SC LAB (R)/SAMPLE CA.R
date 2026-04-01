# -------------------------------------------
# Hierarchical Clustering (Single Linkage) in R
# Using Iris Dataset
# -------------------------------------------

# Step 1: Load dataset
data(iris)

# Step 2: Remove categorical variable (Species)
iris_data <- iris[, -5]

# Step 3: Standardize the data
iris_scaled <- scale(iris_data)

# Step 4: Compute distance matrix (Euclidean distance)
dist_matrix <- dist(iris_scaled, method = "euclidean")

# View distance matrix (first few values)
print(as.matrix(dist_matrix)[1:5, 1:5])

# Step 5: Apply hierarchical clustering (Single Linkage)
hc_single <- hclust(dist_matrix, method = "single")

# Step 6: Plot dendrogram
plot(hc_single,
     main = "Dendrogram - Single Linkage",
     xlab = "",
     sub = "",
     cex = 0.6)

# Step 7: Cut tree into 3 clusters (For 3 species)
clusters <- cutree(hc_single, k = 3)

# Step 8: View cluster sizes
print(table(clusters))

# Step 9: Compare with actual species
print(table(clusters, iris$Species))

# Step 10: Visualize clusters (2D plot)
plot(iris$Sepal.Length, iris$Sepal.Width,
     col = clusters,
     pch = 19,
     xlab = "Sepal Length",
     ylab = "Sepal Width",
     main = "Cluster Visualization (Single Linkage)")




set.seed(1)
sample_index <- sample(1:150, 30)
sample_data <- iris_scaled[sample_index, ]

# Distance matrix
dist_matrix <- dist(sample_data, method = "euclidean")

# Hierarchical clustering (Single Linkage)
hc_single <- hclust(dist_matrix, method = "single")

# Plot dendrogram
plot(hc_single,
     main = "Dendrogram - 30 Observations (Single Linkage)",
     xlab = "",
     sub = "",
     cex = 0.8)

# Draw rectangles for 3 clusters
rect.hclust(hc_single, k = 3, border = "red")


# Replace Step 5 in Single linkage by
hc_complete <- hclust(dist_matrix, method = "complete")

# Q1. Perform hierarchical clustering using single and complete linkage on the wine dataset.

# For wine dataset
install.packages("rattle")
library(rattle)
data(wine)

# Q2. Cluster US states based on crime rates using USArrests dataset.