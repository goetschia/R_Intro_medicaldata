rm(list = ls())
source("Packages.R")
source("Data_Cleaning.R")

# Descriptive stats

p_case_cont <- ggplot(dat_overview, aes(x = name, y = value)) + geom_col() +
  xlab(label = "") + ylab(label = "Number of patients") + theme_bw()


p_hist_smoke_case <- ggplot(dat, aes(x = smoker, y = cases)) + geom_col() + xlab(label = "Tobacco consumption [g/day]") +
  ylab("Number of cases") + theme_bw()

p_hist_smoke_control <- ggplot(dat, aes(x = smoker, y = controls)) + geom_col() + xlab(label = "Tobacco consumption [g/day]") +
  ylab("Number of controls") + theme_bw()

p_hist_alc_case <- ggplot(dat, aes(x = alcohol, y = cases)) + geom_col() + xlab(label = "Alcohol consumption [g/day]") +
  ylab("Number of cases") + theme_bw()

p_hist_alc_control <- ggplot(dat, aes(x = alcohol, y = controls)) + geom_col() + xlab(label = "Alcohol consumption [g/day]") +
  ylab("Number of controls") + theme_bw()

p_hist_age_case <- ggplot(dat, aes(x = age, y = cases)) + geom_col() + xlab(label = "Age groups [years]") +
  ylab("Number of cases") + theme_bw()

p_hist_age_control <- ggplot(dat, aes(x = age, y = controls)) + geom_col() + xlab(label = "Age groups [years]") +
  ylab("Number of cases") + theme_bw()

p_grid_hist <- plot_grid(plotlist = list(p_hist_smoke_case, p_hist_smoke_control, p_hist_alc_case, p_hist_alc_control, p_hist_age_case, p_hist_age_control), 
                         labels = c("V1", "V2", "V3", "V4", "V5", "V6"), label_size = 10, nrow = 3, hjust = -0.25, vjust = 1)
