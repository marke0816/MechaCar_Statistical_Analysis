#Deliverable 1

#load dplyr
library(dplyr)

#load data
MechaCar <- read.csv(file='data/MechaCar_mpg.csv', check.names=F, stringsAsFactors=F)

#linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)

#summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar))
