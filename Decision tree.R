# Define the costs and revenues
cost <- 2
good_revenue_no_expansion <- 4
bad_revenue_no_expansion <- 1.5
good_revenue_expansion <- 7
bad_revenue_expansion <- 3

# Define the probability of a good economy and a bad economy
good_prob <- 0.45
bad_prob <- 0.55

# Calculate the expected value of the decision to expand the factory
expansion_ev <- good_prob * (good_revenue_expansion - cost) + bad_prob * (bad_revenue_expansion - cost)

# Calculate the expected value of the decision to not expand the factory
no_expansion_ev <- good_prob * good_revenue_no_expansion + bad_prob * bad_revenue_no_expansion

# Print the results
print(paste("Expected value of expansion: $", expansion_ev))
print(paste("Expected value of no expansion: $", no_expansion_ev))
