library(dplyr)

head(mtcars)

# ex 1
df.ex.1 <- mtcars %>% 
    filter(mpg > 20 & cyl == 6)
head(df.ex.1)

# ex 2
df.ex.2 <- mtcars %>% 
    arrange(cyl, desc(wt))
head(df.ex.2)

# ex 3
df.ex.3 <- mtcars %>% 
    select(mpg, hp)
head(df.ex.3)

# ex 4
df.ex.4 <- mtcars %>% 
    distinct(gear) 
head(df.ex.4)

# ex 5
df.ex.5 <- mtcars %>% 
    mutate(performance = hp/wt)
head(df.ex.5)

# ex 6
avg.mpg <- mtcars %>% 
    summarise(avg_mpg = mean(mpg))
print(avg.mpg)

# ex 7
avg.hp <- mtcars %>% 
    filter(cyl == 6) %>% 
    summarise(avg_hp = mean(hp))
print(avg.hp)
