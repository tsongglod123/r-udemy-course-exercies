# ex 1
va <- 1:3
vb <- 4:6
vect_matrix <- rbind(va, vb)
print(vect_matrix)

# ex 2
mat <- matrix(1:9, nrow = 3, ncol = 3, byrow = TRUE)
print(mat)

# ex 3
print(is.matrix(mat))

# ex 4
mat2 <- matrix(1:25, nrow = 5, ncol = 5, byrow = TRUE)
print(mat2)

# ex 5
print(mat2[2:3, 2:3])

# ex 6
print(mat2[4:5, 4:5])

# ex 7
print(sum(mat2))

# ex 8
print(matrix(round(runif(20, min = 0, max = 100), 2), nrow = 4, ncol = 5))
