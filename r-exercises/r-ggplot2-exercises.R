library(dplyr)
library(ggplot2)
library(ggthemes)

head(mpg)

# ex 1
pl1 <- mpg %>% 
    ggplot(aes(x = hwy)) + 
    geom_histogram()
print(pl1)

# ex 2
pl2 <- mpg %>% 
    ggplot(aes(x = factor(manufacturer))) + 
    geom_bar(aes(fill = factor(cyl)))
print(pl2)

head(txhousing)

# ex 3
pl3 <- txhousing %>%
    ggplot(aes(x = sales, y = volume)) + 
    geom_point(alpha = 0.5, color = "blue", na.rm = T) + 
    geom_smooth(color = "red", na.rm = T)
print(pl3)
