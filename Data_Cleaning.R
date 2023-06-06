rm(list = ls())
source("Packages.R")

data("esoph_ca")

dat <- esoph_ca
names(dat) <- c("age", "alcohol", "smoker", "cases", "controls")

dat <- dat %>% mutate(alcohol = if_else(alcohol == "0-39g/day", "0-39", alcohol),
                      smoker = if_else(smoker == "0-9g/day", "0-9", smoker))

dat_overview <- dat %>% summarise(cases = sum(cases), controls = sum(controls)) %>% pivot_longer(c(cases,controls))

rm(esoph_ca)
