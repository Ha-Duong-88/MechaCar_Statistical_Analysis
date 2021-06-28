#Deliverable 1 - Linear Regression
library(tidyverse)
MechaCar_mpg_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data=MechaCar_mpg_table) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg_table)) #generate summary statistics


#Deliverable 2a - Statistics
Suspension_Coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- Suspension_Coil_table %>% summarize(Mean= mean(PSI), Median= median(PSI), Var= var(PSI), SD= sd(PSI), .groups= 'keep') #generate summary statistics for PSI


#Deliverable 2b - Statistics
lot_summary <- Suspension_Coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean= mean(PSI), Median= median(PSI), Var= var(PSI), SD= sd(PSI), .groups= 'keep') #generate summary statistics for Manufacturing_Lot


#Deliverable 3 - One-sample t-test
#compare PSI across all manufacturing lot
#t-test(suspension_coilPSI, mu=1500)


#Compare mean PSI of lot 1 to mean of population= 1500
t.test((Suspension_Coil_table$PSI), mu=1500) #compare sample versus population means

#create a data frame
#lot_1 <- Suspension_coil_table %>% filter(Manufacturing_Lot =='Lot1')
#lot_2 <- Suspension_coil_table %>% filter(Manufacturing_Lot =='Lot2')
#lot_3 <- Suspension_coil_table %>% filter(Manufacturing_Lot =='Lot3')


#t-test for lot 1
t.test(subset(Suspension_Coil_table, Manufacturing_Lot == 'Lot1')$PSI, mu=1500) #compare sample versus population means

#t-test for lot 2
t.test(subset(Suspension_Coil_table, Manufacturing_Lot == 'Lot2')$PSI, mu=1500) #compare sample versus population means

#t-test for lot 3
t.test(subset(Suspension_Coil_table, Manufacturing_Lot == 'Lot3')$PSI, mu=1500) #compare sample versus population means
