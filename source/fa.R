setwd("C:/Users/faese/Documents/Universidad/2021-2/LET0000/GIT/BigFive/data")

library(rio)
library(dplyr)
library(polycor)
library(psych)
library

base <- rio::import("data.csv")

base <- base[, 8:57]
base <- as_tibble(sapply(base, as.numeric))

#quest <- as_tibble(lapply(base, factor, order = TRUE))
#test.hetcor <- hetcor(quest, use = "pairwise.complete.obs")
#print('ok')
#corPlot(test.hetcor$correlations)
####################

scree(base, factors = TRUE, hline = -1)

#psych::fa.parallel(base, fa = "both", show.legend = FALSE, fm = "uls", cor = "poly")
#print('ok')
