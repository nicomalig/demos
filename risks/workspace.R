# In-class workspace 1/30
# Nico Malig
# INFO 498c, WI17

require(dplyr)
require(rmarkdown)
data <- read.csv('data/prepped/risk-factors.csv')

data$average.risk <- rowMeans(data[7:ncol(data)], na.rm = TRUE)

