# a. Store the vector and identify elements
v <- c(6, 9, 7, 3, 6, 7, 9, 6, 3, 6, 6, 7, 1, 9, 1)
v6 <- v[v == 6]  # Elements equal to 6
v_ge6 <- v[v >= 6]  # Elements >= 6
v_lt8 <- v[v < 6 + 2]  # Elements < 8
v_neq6 <- v[v != 6]  # Elements not equal to 6

# b. Create a new vector and fill 2x2x3 array
new_v <- v[-(1:3)]  # Remove first 3 elements
arr <- array(new_v, dim = c(2, 2, 3))
arr_condition1 <- arr <= (6 / 2) + 4  # Condition before adding 2
arr_updated <- arr + 2
arr_condition2 <- arr_updated <= (6 / 2) + 4  # Condition after adding 2

# c. 10x10 identity matrix and find 0 locations
I10 <- diag(1, 10)
zeros <- which(I10 == 0, arr.ind = TRUE)

# d. Check logical arrays for TRUE
any_cond1 <- any(arr_condition1)
all_cond1 <- all(arr_condition1)
any_cond2 <- any(arr_condition2)
all_cond2 <- all(arr_condition2)

# e. Diagonal elements of the logical matrix
diag_elements <- diag(arr_condition1)
no_true <- all(!diag_elements)

# Second part
# a. Store foo and identify elements
foo <- c(7, 1, 7, 10, 5, 9, 10, 3, 10, 8)
foo_cond <- foo[foo > 5 | foo == 2]  # Elements > 5 or == 2

# b. Store bar and identify elements
bar <- c(8, 8, 4, 4, 5, 1, 5, 6, 6, 8)
bar_cond <- bar[bar <= 6 & bar != 4]  # Elements <= 6 and != 4

# c. Identify common elements in foo and bar conditions
common <- intersect(foo_cond, bar_cond)

# d. Store baz and perform calculations
baz <- foo + bar
baz_cond1 <- baz[baz >= 14 & baz != 15]  # Elements >= 14 but != 15
div_cond <- (baz / foo)
div_cond_result <- div_cond[div_cond > 4 | div_cond <= 2]  # Element-wise division

# e. Confirm using long version
manual_check <- v[v == 6]  # First comparison
