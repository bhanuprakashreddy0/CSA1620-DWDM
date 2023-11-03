
pencils <- c(9, 25, 23, 12, 11, 6, 7, 8, 9, 10)
mean_value <- mean(pencils)
median_value <- median(pencils)
mode_value <- as.numeric(names(sort(table(pencils), decreasing = TRUE)[1]))
print(paste("Mean:", mean_value))
print(paste("Median:", median_value))
print(paste("Mode:", mode_value))

