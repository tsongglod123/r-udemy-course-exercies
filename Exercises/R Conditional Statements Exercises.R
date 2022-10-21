# ex 1 
x <- 3
res <- ifelse((x %% 2) == 0, "even", "odd")
print(res)

# ex 2 
x <- matrix()
is_matrix <- ifelse(is.matrix(x), "Y", "N")
print(is_matrix)

# ex 3
x <- c(3, 7, 1)
temp = 0
for (i in 1:length(x)) {
    for (j in 1:length(x)) {
        if (x[i] > x[j]) {
            temp = x[j]
            x[j] = x[i]
            x[i] = temp
        }
    }
}
print(x)

# ex 4
y <- c(1, 10, 20)
max = 0
for (i in y) {
    max = i
    for (temp in y) {
        if (temp > max) max = temp
    }        
}
print(max)
