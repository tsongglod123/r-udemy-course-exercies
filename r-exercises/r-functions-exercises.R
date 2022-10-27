# ex 1
prod <- function(val1, val2) {
    return(val1 * val2)
}
print(prod(3, 4))

# ex 2
ex2.v1 <- c(1:3)
ex2.v2 <- c(1, 4, 5)

num_check <- function(val, vector) {
    for (el in vector) {
        if (el == val) return(T)
    }
    return(F)
}
print(num_check(2, ex2.v1))

# ex 3
ex3.v1 <- c(1, 1, 2, 2, 3, 3)
ex3.v2 <- c(1, 1, 2, 2, 3, 1, 4, 5, 5, 2, 2, 1, 3)

num_count <- function(val, vector) {
    count <- 0
    for (el in vector) {
        if (el == val) count <- count + 1 
    }
    return(count)
}
print(num_count(1, ex3.v2))

# ex 4
bar_count <- function(val) {
    if (val < 0) return(-1) 
    bar1 = val %% 5
    bar5 = (val - bar1)/5
    return(bar1 + bar5)
}
print(bar_count(5))

# ex 5
summer <- function(val1, val2, val3) {
    total <- 0
    nums <- c(val1, val2, val3)
    for (num in nums) {
        if (num %% 3 != 0) total <- total + num
    }
    return(total)
}
print(summer(9, 6, 3))

# ex 6
prime_check <- function(val) {
    if (val == 2) return(T)
    for (num in 2:(val - 1)) {
        if (val %% num == 0) return(F)
    }
    return(T)
}
print(prime_check(2))
