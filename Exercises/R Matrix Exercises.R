#ex 1
va <- 1:3
vb <- 4:6
vect_matrix <- rbind(va, vb)
print(vect_matrix)
print("=============================")

#ex 2
mat <- matrix(1:9, nrow = 3, ncol = 3, byrow = TRUE)
print(mat)
print("=============================")

#ex 3
print(is.matrix(mat))
print("=============================")

#ex 4
mat2 <- matrix(1:25, nrow = 5, ncol = 5, byrow = TRUE)
print(mat2)
print("=============================")

#ex 5
print(mat2[2:3, 2:3])
print("=============================")

#ex 6
print(mat2[4:5, 4:5])
print("=============================")

#ex 7
print(sum(mat2))
print("=============================")

#ex 8
print(matrix(runif(20, min = 0, max = 100), nrow = 4, ncol = 5))
print("=============================")