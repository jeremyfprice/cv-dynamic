library(readr)
library(dplyr)
library(tidyr)

awards.frame <- read_csv(file = "awards.csv", col_names = TRUE)
awards.frame <- awards.frame[order(awards.frame$end, na.last = FALSE, decreasing = TRUE), ]
awards.frame$start <- as.character(awards.frame$start)
awards.frame$end <- awards.frame$end %>% replace_na("Present")
awards.frame$date <- if_else(awards.frame$start != awards.frame$end,
                             paste(awards.frame$start, "-", awards.frame$end),
                             awards.frame$start)
awards.frame <- awards.frame %>% select(-start, -end)
