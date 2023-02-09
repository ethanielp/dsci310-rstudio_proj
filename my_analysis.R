library(cowsay)

cowsay::say("hello", by = "chicken")
install.packages("RCurl")
library(RCurl)
options(repr.matrix.max.rows = 6)
set.seed(1)

#reading the dataset into Jupyter
x <- getURL("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2022/2022-01-25/details.csv")
match_data <- read.csv(text = x)
match_data
