# ex 1 
x <- 3
if ((x %% 2) == 0) {
    print("Even number")
} else {
    print("Not even")
}

# ex 2 
x <- matrix()
print(ifelse(is.matrix(x), "Is a matrix", "not a Matrix"))

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
x <- c(1, 10, 20)
max = 0
for (i in x) {
    max = i
    for (temp in x) {
        if (temp > max) {
            max = temp
        }
    }        
}
print(max)
