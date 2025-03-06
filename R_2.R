vec_a <- c(seq(3, 6, length.out = 5), rep(c(2, -5.1, -33), 2), 7, 42 + 2)
print(vec_a)

vec_b <- c(vec_a[1], vec_a[length(vec_a)])
print(vec_b)

vec_c <- vec_a[-c(1, length(vec_a))]
print(vec_c)

vec_reconstructed <- c(vec_b[1], vec_c, vec_b[2])
print(vec_reconstructed)

vec_a <- sort(vec_a)
print(vec_a)

vec_a_reversed <- vec_a[length(vec_a):1]
print(identical(vec_a_reversed, sort(vec_a, decreasing = TRUE)))

vec_g <- c(rep(vec_c[3], 3), rep(vec_c[6], 4), vec_c[length(vec_c)])
print(vec_g)

vec_h <- vec_a
vec_h[c(1, 5:7, length(vec_h))] <- c(99, 98, 97, 96, 95)
print(vec_h)

