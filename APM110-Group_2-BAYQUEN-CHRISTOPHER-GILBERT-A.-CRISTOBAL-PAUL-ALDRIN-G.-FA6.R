#Geometric distribution

install.packages("tidyverse")

geom_sample <- rgeom(1000,0.2) +1
geom_sample

table(geom_sample)

mean_x <- mean(geom_sample)  #mean of sample
var_x <- var(geom_sample)    #variance of sample
sd_x <- sd(geom_sample)      #standard deviation of sample

round(mean_x,2)
round(var_x,2)
round(sd_x,2)

summary(geom_sample)

#textbook plot | Probability of first success
x <- 0:max(geom_sample)
plot(x+1, dgeom(x, 0.2), xlab = "First Success",
     ylab = "Probability", type = "h")

#qplot using ggplot2 | Frequency of first success
qplot(geom_sample, geom="histogram",col=I("white"))

#histogram of rgeom
hist(geom_sample,
     xlab = "Trials")


