library(ggplot2movies)
names(movies)
movies[9000:9020, 1:6]  # display 20 rows, 6 first columns
mean(movies$length)
mean(movies$budget)
mean(movies$budget, na.rm = TRUE)
mean(is.na(movies$budget))
