v1 <- c(100, 200, 300)
v2 <- c('a','b','c')
print(v1[c(1,2)])

v1 <- c(1:10)
print(v1[2:4])

v1 <- c(100,200,300)
names(v1) <- v2
print(v1[v1 > 200])

num <- 1:10
outMatrix <- matrix(data = num, nrow = 2, ncol = 5, byrow = FALSE)

rownames(outMatrix) <- c('odd','even')

num <- c(1:5)
outMatrix <- rbind(outMatrix,num)

print(outMatrix)
print(outMatrix['num',])
