#Q1
#probability that the train arrives between 8:10 a.m. and 8:25am
punif(25,min =0,max = 40)-punif(10,min = 0,max = 40)

#Q2
#Probability that an update will take at most 2 hours.
pexp(2,rate = 1/3)

#Q3
#i. Probability that a randomly selected person has an IQ > 130
pnorm(130, mean = 100, sd = 15, lower.tail = FALSE)

#ii. IQ score represents the 95th percentile
qnorm(0.95, mean = 100,sd = 15)