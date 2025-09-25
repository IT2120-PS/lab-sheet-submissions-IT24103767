setwd("C:\\Users\\IT24103767\\Desktop\\IT24103767")
#Q1
data<-read.table("Exercise - LaptopsWeights.txt",header = TRUE)
weights<- data$Weight.kg.
population_mean <- mean(weights)
print(paste("Population Mean: ", population_mean))
population_sd <- sd(weights)
print(paste("Population Standard Deviation: ", population_sd))

#Q2
num_samples<-25
sample_size<-6

sample_means<-numeric(num_samples)
sample_sds<-numeric(num_samples)
set.seed(123)

for(i in 1: num_samples){
  samp<-sample(weights,size = sample_size, replace = TRUE)
  sample_means[i]<-mean(samp)
  sample_sds[i]<-sd(samp)
}
results<-data.frame(
  Sample = 1: num_samples,
  Mean = round(sample_means,3),
  SD = round(sample_sds,3)
)
print(results)

#Q3
mean_of_sample_means <- mean(sample_means)
sd_of_sample_means <- sd(sample_means)
print(paste("Mean of Sample Means: ", mean_of_sample_means))
print(paste("Standard Deviation of Sample Means: ", sd_of_sample_means))

population_mean
population_sd