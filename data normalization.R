
data <- c(200, 300, 400, 600, 1000)

min_max_normalized <- (data - min(data)) / (max(data) - min(data))
cat("Min-Max Normalized Data: ", min_max_normalized, "\n")

# Z-Score normalization
z_score_normalized <- (data - mean(data)) / sd(data)

cat("Z-Score Normalized Data: ", z_score_normalized, "\n")

