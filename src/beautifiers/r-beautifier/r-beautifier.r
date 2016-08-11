if(!("formatR" %in% installed.packages()[,"Package"])) install.packages("formatR",repos='http://cran.us.r-project.org')
library(formatR)
indent_size <- commandArgs(trailingOnly = TRUE)[1]
file <- commandArgs(trailingOnly = TRUE)[2]
tidy_source(text = readLines(file), indent = indent_size)
