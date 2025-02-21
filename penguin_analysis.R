# Sam Zani HW5
library(palmerpenguins)

head(penguins)

numeric_means <- apply(penguins[, sapply(penguins, is.numeric)], 2, mean, na.rm = TRUE)
print(numeric_means)

# tapply
species_counts <- tapply(penguins$species, penguins$species, length)
print(species_counts)

# lapply
bill_length_means <- lapply(split(penguins$bill_length_mm, penguins$species), mean, na.rm = TRUE)
print(bill_length_means)

# sapply
summary_table <- sapply(penguins[, sapply(penguins, is.numeric)], function(x)
  c(mean = mean(x, na.rm = TRUE), sd = sd(x, na.rm = TRUE)))
print(summary_table)
