#SA1.3 BAYQUEN & CRISTOBAL

#probability of finding the key
p <- 0.6

# Create a vector to store the number of searches required for each simulation
n_searches <- c()

# Simulate the search process
for (i in 1:sims) {
  found <- FALSE
  searches <- 0
  
  while (!found) {
    searches <- searches + 1
    if (runif(1) < p) {
      found <- TRUE
    }
  }
  
  n_searches[i] <- searches
}

n_searches

# Plot the simulated pdf
hist(n_searches, breaks = seq(0, max(n_searches), by = 1), 
     main = "Number of Searches to Find Key Phrase",
     xlab = "Number of Searches", freq = FALSE)

# Calculate the mean and variance of the simulated distribution
s_mean <- mean(n_searches)
s_var <- var(n_searches)
cat("Average number of searches:", s_mean, "\n")
cat("Variance of searches:", s_var, "\n")

# Obtain the conditional distribution of searches when three searches have been carried out without success
n_searches_3above <- n_searches[n_searches > 3]
hist(n_searches_3above, breaks = seq(0, max(n_searches_3above), by = 1), 
     main = "Conditional Distribution of 3 Consecutive Failed Searches",
     xlab = "Number of Searches", freq = FALSE)
