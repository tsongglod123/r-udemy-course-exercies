packages <- c(
    "dplyr",
    "ggplot2",
    "plotly",
    "data.table",
    "readr"
)

lapply(packages, require, character.only = T)

# import the economist data
df <- read_csv("projects/data-visualization-project/datasets/Economist_Assignment_Data.csv")

# drop first column
df <- df[, -1]

# check data
head(df)
glimpse(df)
summary(df)
is.na.data.frame(df)

# transform data
df <- df %>% mutate(Country = factor(Country), Region = factor(Region))

# check data after transform 
head(df)
glimpse(df)
summary(df)

pl <- df %>% 
    ggplot(aes(x = CPI, y = HDI, text = paste("Country:", Country))) +
    geom_point(aes(color = Region), size = 3) +
    geom_smooth(aes(group = 1), 
                color = "red", 
                se = F, 
                method = "lm", 
                formula = y ~ log(x)) +
    scale_x_continuous(name = "Corruption Perceptions Index, 2011 (10 = least corrupt)", 
                       limits = c(1, 10), 
                       breaks = 1:10) +
    scale_y_continuous(name = "Human Development Index, 2011 (1 = best)",
                       limits = c(0.2, 1),
                       breaks = seq(0.2, 1, 0.1)) +
    ggtitle("Corruption and human development") + 
    theme_bw()

gpl <- ggplotly(pl, )

print(gpl)
