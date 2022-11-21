library(dplyr)

mecha_table <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

sc_table <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

head(mecha_table)

head(sc_table)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_table))

total_summary <- sc_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

lot_summary <- sc_table %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

t.test(sc_table$PSI, mu=1500)

t.test(subset(sc_table,Manufacturing_Lot=="Lot1")$PSI,mu=1500)

t.test(subset(sc_table,Manufacturing_Lot=="Lot2")$PSI,mu=1500)

t.test(subset(sc_table,Manufacturing_Lot=="Lot3")$PSI,mu=1500)
