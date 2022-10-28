library(tidyr)
library(dplyr)

comp <- c(1, 1, 1, 2, 2, 2, 3, 3, 3)
yr <- c(1998, 1999, 2000, 1998, 1999, 2000, 1998, 1999, 2000)
q1 <- runif(9, 0, 100)
q2 <- runif(9, 0, 100)
q3 <- runif(9, 0, 100)
q4 <- runif(9, 0, 100)

df <- data.frame(comp = comp, year = yr, q1 = q1, q2 = q2, q3 = q3, q4 = q4)

head(df)

df %>% 
    gather(qtr, revenue, q1:q4)

stocks <- data.frame(
    date = as.Date('2009-01-01') + 0:9,
    x = rnorm(10, 0, 1),
    y = rnorm(10, 0, 2),
    z = rnorm(10, 0, 4)
)

head(stocks)

stocks %>%
    gather(stock, price, x:z)

