seq_values <- seq(5, -11, by = -0.3)
print(seq_values)

seq_values <- rev(seq_values)
print(seq_values)

vec_c <- rep(c(-1, 3, -5, 7, -9), each = 10, times = 2)
print(vec_c)

sorted_vec_c <- sort(vec_c, decreasing = TRUE)
print(sorted_vec_c)

vec_d <- c(6:12, rep(5.3, 3), -3, seq(102, length(vec_c), length.out = 9))
print(vec_d)

print(length(vec_d) == 20)


