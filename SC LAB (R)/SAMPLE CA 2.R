# =========================================
# Hierarchical Clustering - USArrests
# =========================================

# 1. Load dataset
data("USArrests")

# 2. Use all variables
data_cluster <- USArrests

# 3. Standardize the data
data_scaled <- scale(data_cluster)

# 4. Compute distance matrix (Euclidean)
dist_matrix <- dist(data_scaled, method = "euclidean")

# 5. Hierarchical clustering (Complete Linkage)
hc <- hclust(dist_matrix, method = "complete")

# 6. Plot dendrogram
plot(hc,
     main = "Dendrogram - USArrests (Complete Linkage)",
     xlab = "States",
     sub = "",
     cex = 0.7)

# (Optional but recommended) Add rectangles for clusters
rect.hclust(hc, k = 3, border = "red")

# 7. Cut tree into 3 clusters
clusters <- cutree(hc, k = 3)

# 8. Cluster sizes
cat("Cluster Sizes:\n")
print(table(clusters))

# 9. State-wise cluster assignment
cat("\nState-wise Clusters:\n")
print(clusters)

# 10. Visualization (better version)
plot(data_scaled[, "Murder"], data_scaled[, "Assault"],
     col = clusters,
     pch = 19,
     xlab = "Murder (Scaled)",
     ylab = "Assault (Scaled)",
     main = "USArrests Clustering (Complete Linkage)")

# Add legend (VERY useful)
legend("topright",
       legend = c("Cluster 1", "Cluster 2", "Cluster 3"),
       col = 1:3,
       pch = 19)