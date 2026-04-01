# =========================================
# Hierarchical Clustering - Wine Dataset
# =========================================

# 0. Install & load package
install.packages("rattle")   # run once
library(rattle)

# 1. Load dataset
data(wine)

# 2. Remove class label (first column)
wine_data <- wine[, -1]

# 3. Standardize the data
wine_scaled <- scale(wine_data)

# 4. Compute distance matrix (Euclidean)
dist_matrix <- dist(wine_scaled, method = "euclidean")

# 5A. Hierarchical clustering (Single Linkage)
hc_single <- hclust(dist_matrix, method = "single")

# 6A. Plot dendrogram (Single Linkage)
plot(hc_single,
     main = "Dendrogram - Wine (Single Linkage)",
     xlab = "",
     sub = "",
     cex = 0.6)

# 7A. Cut tree into 3 clusters
clusters_single <- cutree(hc_single, k = 3)

# 8A. Cluster sizes
print("Single Linkage Cluster Sizes:")
print(table(clusters_single))

# -----------------------------------------

# 5B. Hierarchical clustering (Complete Linkage)
hc_complete <- hclust(dist_matrix, method = "complete")

# 6B. Plot dendrogram (Complete Linkage)
plot(hc_complete,
     main = "Dendrogram - Wine (Complete Linkage)",
     xlab = "",
     sub = "",
     cex = 0.6)

# 7B. Cut tree into 3 clusters
clusters_complete <- cutree(hc_complete, k = 3)

# 8B. Cluster sizes
print("Complete Linkage Cluster Sizes:")
print(table(clusters_complete))

# 9. Compare clustering results
print("Comparison (Single vs Complete):")
print(table(clusters_single, clusters_complete))
