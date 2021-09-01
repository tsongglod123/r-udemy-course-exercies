# ex 1
age <- c(22, 25, 26)
weight <- c(150, 165, 120)
sex <- c("M", "M", "F")

df_students <- data.frame(age, weight, sex, row.names = c("Sam", "Frank", "Amy"))
print(df_students)

# ex 2
print(is.data.frame(mtcars))

# ex 3
mat <- matrix(1:25, nrow = 5)
mat <- as.data.frame(mat)
print(mat)

# ex 4
df <- mtcars

# ex 5
print(head(df, 6))

# ex 6
print(mean(df$mpg))

# ex 7
print(df[df$cyl == 6, ])

# ex 8
print(df[, c("am", "gear", "carb")])

# ex 9
performance <- df$hp/df$wt
df <- cbind.data.frame(df, performance)
print(head(df))

# ex 10
df$performance <- round(df$performance, 2)
print(head(df))

# ex 11
print(mean(df$mpg[df$hp > 100 & df$wt > 2.5]))

# ex 12
print(df["Hornet Sportabout", "mpg"])
