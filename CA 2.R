  # =========================================
  # Hierarchical Clustering - USArrests
  # =========================================
  
  # 1. Load dataset
  data(USArrests)
  
  # 2. Use all variables
  data_cluster <- USArrests
  
  # 3. Standardize the data
  data_scaled <- scale(data_cluster)
  
  # 4. Compute distance matrix
  dist_matrix <- dist(data_scaled, method = "euclidean")
  
  # 5. Hierarchical clustering (Complete Linkage recommended)
  hc <- hclust(dist_matrix, method = "complete")
  
  # 6. Plot dendrogram
  plot(hc,
       main = "Dendrogram - USArrests",
       xlab = "",
       sub = "",
       cex = 0.7)
  
  # 7. Cut tree into 3 clusters
  clusters <- cutree(hc, k = 3)
  

  # 8. Cluster sizes
  print("Cluster Sizes:")
  print(table(clusters))
  
  # 9. View which state belongs to which cluster
  print("State-wise Clusters:")
  print(clusters)
  
  # 10. Optional visualization (2D)
  plot(USArrests$Murder, USArrests$Assault,
       col = clusters,
       pch = 19,
       xlab = "Murder",
       ylab = "Assault",
       main = "USArrests Clustering Visualization")