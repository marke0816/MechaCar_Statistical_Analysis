#Deliverable 1

#load dplyr
library(dplyr)

#load data
MechaCar <- read.csv(file='data/MechaCar_mpg.csv', check.names=F, stringsAsFactors=F)

#linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)

#summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar))

#Deliverable 2

#load data
Suspension <- read.csv(file='data/Suspension_Coil.csv', check.names=F, stringsAsFactors=F)

#summary
total_summary <- Suspension %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), StDev=sd(PSI))

#lot summary
lot_summary <- Suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),StDev=sd(PSI))
