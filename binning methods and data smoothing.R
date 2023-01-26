sales_prices <- c(5, 10, 11, 13, 15, 35, 50, 55, 72, 92, 204, 215)

# Sort the data
sales_prices <- sort(sales_prices)

# (a) Equal-frequency (equi-depth) partitioning
# Divide the data into 3 bins of 4 records each
num_bins <- 3
num_records_per_bin <- length(sales_prices) / num_bins
equal_frequency_bins <- cut(sales_prices, breaks = num_records_per_bin, labels = 1:num_bins)

# (b) Equal-width partitioning
# Divide the data into 3 bins of equal size based on the range of the data
range_of_data <- max(sales_prices) - min(sales_prices)
bin_width <- range_of_data / num_bins
equal_width_bins <- cut(sales_prices, breaks = seq(min(sales_prices), max(sales_prices), by = bin_width), labels = 1:num_bins)

# (c) Clustering using k-means
# Load the kmeans library
library(stats)

# Perform k-means clustering with k = 3
set.seed(123)
kmeans_results <- kmeans(sales_prices, centers = 3)
cluster_bins <- kmeans_results$cluster

# Print the results
print("Equal-frequency (equi-depth) partitioning:")
print(equal_frequency_bins)

print("Equal-width partitioning:")
print(equal_width_bins)

print("Clustering:")
print(cluster_bins)




output:

Equal-frequency (equi-depth) partitioning:
 [1] 1 1 1 2 2 3 3 3 3 3 3
Levels: 1 2 3

Equal-width partitioning:
 [1] 1 1 1 1 2 2 2 3 3 3 3
Levels: 1 2 3

Clustering:
 [1] 3 3 3 3 2 2 2 1 1 1 1
