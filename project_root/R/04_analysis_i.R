# Clear workspace
# ------------------------------------------------------------------------------
rm(list = ls())

# Load libraries
# ------------------------------------------------------------------------------
library("tidyverse")

# Define functions
# ------------------------------------------------------------------------------
source(file = "R/99_project_functions.R")

# Load data
# ------------------------------------------------------------------------------
my_data_clean_aug <- read_tsv(file = "data/03_my_data_clean_aug.tsv")

# Wrangle data
# ------------------------------------------------------------------------------
#my_data_clean_aug %>% ...

# Model data
# ------------------------------------------------------------------------------
# my_data_clean_aug %>% 


# Visualise data
# ------------------------------------------------------------------------------
pca_plot <- my_data_clean_aug %>% 
  ggplot(aes(x = .fittedPC1, y = .fittedPC2, label = aa, colour = chem_class)) +
  geom_text() +
  theme(legend.position = "bottom")

# Write data
# ------------------------------------------------------------------------------
write_tsv(...)