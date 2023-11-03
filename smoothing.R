data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)
num_bins <- 3
bin_width <- (max(data) - min(data)) / num_bins
bin_mean_smoothed <- numeric(0)
bin_median_smoothed <- numeric(0)
bin_boundaries_smoothed <- numeric(0)
for (i in 1:num_bins) {
  lower_bound <- min(data) + (i - 1) * bin_width
  upper_bound <- min(data) + i * bin_width
  data_in_bin <- data[data >= lower_bound & data <= upper_bound]
  bin_mean <- mean(data_in_bin)
  bin_median <- median(data_in_bin)
  bin_boundaries <- rep(c(lower_bound, upper_bound), length(data_in_bin))
  bin_mean_smoothed <- c(bin_mean_smoothed, rep(bin_mean, length(data_in_bin)))
  bin_median_smoothed <- c(bin_median_smoothed, rep(bin_median, length(data_in_bin)))
  bin_boundaries_smoothed <- c(bin_boundaries_smoothed, bin_boundaries)
}
cat("Smoothing by Bin Mean: ", bin_mean_smoothed, "\n")
cat("Smoothing by Bin Median: ", bin_median_smoothed, "\n")
cat("Smoothing by Bin Boundaries: ", bin_boundaries_smoothed, "\n")
]
