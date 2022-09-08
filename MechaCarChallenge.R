#Deliverable 1
library(dplyr)
mcar_df<- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length,mcar_df)
summary(lm(mpg~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length,mcar_df))


#Deliverable 2
susp_df<- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary<- susp_df %>% summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI),SD=sd(PSI),groups = 'keep')
lot_summary<-  susp_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI),SD=sd(PSI),groups = 'keep')
                                      
#Deliverable 3
t.test(x=susp_df$PSI,mu=1500) 
t.test(subset(susp_df,Manufacturing_Lot=="Lot1",select = PSI),
       mu=1500)
t.test(subset(susp_df,Manufacturing_Lot=="Lot2",select = PSI),
       mu=1500)
t.test(subset(susp_df,Manufacturing_Lot=="Lot3",select = PSI),
       mu=1500)
