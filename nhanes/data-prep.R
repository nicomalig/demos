library(Hmisc)
library(dplyr)

physact.raw <- sasxport.get("/Users/iguest/Desktop/nicomalig/demos/nhanes/data/raw/PAQ_H.XPT")
demo.raw <- sasxport.get("/Users/iguest/Desktop/nicomalig/demos/nhanes/data/raw/DEMO_H.XPT")

combined.raw <- left_join(demo.raw, physact.raw, by = "seqn")

write.csv(combined.raw, file = "preppedNM.csv")