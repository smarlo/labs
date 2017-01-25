#Welcome to Lab 3, please answer the following questions

#Install and require package MASS
require(MASS)
require(dplyr)

#Using the built in dataset anorexia, aggregate the data to look at:
#       1. the number of patients who received a treatment (choose one) who responded positively to treatment

data <- mutate(anorexia, weight.change = Postwt - Prewt)
treat.positive <- filter(data, weight.change > 0, Treat == "CBT")

#       2. the number of patients who recieved a treatment who either did not respond or responded negatively to treatment
treat.negative <- filter(data, weight.change <= 0, Treat == "CBT")
 
#       3. the number of patients who were in the control group who responded positively to treatment

control.positive <- filter(data, weight.change > 0, Treat == "Cont")

#       4. the number of patients who were in the control group who did not respond or responded negatively to treatment

control.negative <- filter(data, weight.change <= 0, Treat == "Cont")

#Such that you end up with a 2 by 2 table


#What kind of analysis appropriate to perform on a study like this?
#This is a case control study, so we perform odds ratio

#Perform the appropriate choice on the dataset
#odds of exposure given outcome / odds of exposure given no outcome

exposure.given.outcome <- nrow(treat.positive) / nrow(treat.negative)
exposure.given.no.outcome <- nrow(control.positive) / nrow(control.negative)

odds.ratio <- exposure.given.outcome / exposure.given.no.outcome

print(odds.ratio)

#What does your result tell you?

#The odds of positive weight change given CBT treatment is 2.231405 times higher than without treatment 


#Write a function that allows you to perform your analysis based on what kind of treatment you want 
#that returns the appropriate calculation





#Which treatment worked better?





