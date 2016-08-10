if(!("formatR" %in% installed.packages()[,"Package"])) install.packages("formatR",repos='http://cran.us.r-project.org')
library(formatR)
file <- commandArgs(trailingOnly = TRUE)[1]
tidy_source(text = readLines(file))
