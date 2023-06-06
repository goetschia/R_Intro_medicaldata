rm(list = ls())
source("Packages.R")
source("Data_Cleaning.R")

p_case_cont <- ggplot(dat_overview, aes(x = name, y = value)) + geom_col() +
  xlab(label = "") + ylab(label = "Number of patients") + theme_bw()
