age <- 35
min_age <- 18 
max_age <- 70  
min_max_normalized_age <- (age - min_age) / (max_age - min_age)
print(min_max_normalized_age)

age <- 35
mean_age <- 40
std_dev_age <- 12.94  
z_score_normalized_age <- (age - mean_age) / std_dev_age
print(z_score_normalized_age)
age <- 35
decimal_places <- nchar(abs(age))
scale_factor <- 10 ^ decimal_places
decimal_scaled_age <- age / scale_factor
print(decimal_scaled_age)