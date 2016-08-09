library(formatR)
file <- commandArgs(trailingOnly = TRUE)[1]
tidy_source(text = readLines(file))
