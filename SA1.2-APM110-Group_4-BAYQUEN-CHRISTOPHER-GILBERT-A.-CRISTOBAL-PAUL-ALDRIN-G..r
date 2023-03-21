#SA1.2 BAYQUEN & CRISTOBAL

print("Univariate Variables: ")
#resetter
univar_vals <- c()
probs <- c()

uni_var <- readline("Enter the name of you univariate variable: ")
vals_count <- as.integer(readline("How many values will you put in?: "))


for (i in 1:vals_count) {
  
  vals = as.numeric(readline("Enter value: "))
  cat("you entered:", vals)
  
  univar_vals <- append(univar_vals, vals)
  
}

univar_vals = na.omit(univar_vals)
print("Enter their corresponding probabilities next:")
print("Note that: Probabilities should be between 0-1, and must total to 1.")

for (i in 1:vals_count) {
  
  
  cat("Probability that x is:", univar_vals[i])
  prob = as.numeric(readline("Enter value: "))
  cat("\nyou entered:", prob, "\n")
  
  probs <- append(probs, prob)
  cat("The remaining probabilities you can input is between 0 -", 1 - sum(probs), "\n")
  
}

cat("The sum of all your probabilities inputted:", sum(probs))

if (sum(probs) != 1) {
  
  probs <- c()
  print("Error: Sum of Probabilities not equal to 1. Enter probabilities again.")
  #repeat loop
}
print(univar_vals)
print(probs)

#note that range is the vector containing the values of the variables
uv_mean <- mean(univar_vals)
cat("The", uni_var, "'s mean:", uv_mean)
uv_var <- var(univar_vals)
cat("The values' variance:", uv_var)

uv_dist <- dnorm(univar_vals, mean = uv_means)
plot(uv_dist)

uvdf <- data.frame("Height" = univar_vals, "Probability" = uv_dist)
ggplot(uvdf, aes(x = Height, y = Probability)) + geom_line(linewidth = 1.5) + geom_point(aes(color = "orange"), size = 3)
