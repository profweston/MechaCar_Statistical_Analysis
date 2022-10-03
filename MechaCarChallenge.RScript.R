#Deliverable 1 for Module 15

library(dplyr)

sink("output.txt", append = T)

mpg <- read.csv(file = 'MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)

lm (mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg)

summary(lm (mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg))

#Deliverable 2

coil <- read.csv(file = 'Suspension_Coil.csv', check.names=F, stringsAsFactors = F)

total_summary <- coil %>%  summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

lot_summary <- coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

#Deliverable 3

t.test(coil$PSI, mu=1500)

t.test(subset(coil, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(coil, Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(coil, Manufacturing_Lot=="Lot3")$PSI, mu=1500)