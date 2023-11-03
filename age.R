
age <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 25, 25, 25, 25, 30, 33, 33, 35, 35, 35, 35, 36, 40, 45, 46, 52, 70)
mean_age <- mean(age)
median_age <- median(age)
cat("Mean:", mean_age, "\n")
cat("Median:", median_age, "\n")
age_table <- table(age)
modes <- as.numeric(names(age_table[age_table == max(age_table)]))
cat("Mode:", modes, "\n")
if (length(modes) == 1) {
  cat("The data is unimodal (one mode).\n")
} else {
  cat("The data is multimodal (multiple modes).\n")
}
midrange_age <- (min(age) + max(age)) / 2
cat("Midrange:", midrange_age, "\n")
q1 <- quantile(age, 0.25)
q3 <- quantile(age, 0.75)
cat("Q1 (First Quartile):", q1, "\n")
cat("Q3 (Third Quartile):", q3, "\n")

