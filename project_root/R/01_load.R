# Clear workspace
# ------------------------------------------------------------------------------
rm(list = ls())

# Load libraries
# ------------------------------------------------------------------------------
install.packages("dplyr")
install.packages("tidyverse")

library("tidyverse")

# Define functions
# ------------------------------------------------------------------------------
source(file = "R/99_project_functions.R")

# Load data
# ------------------------------------------------------------------------------
my_data_raw <- read_table(file = "data/_raw/BLOSUM62.txt", comment = '#') %>% 
  rename(aa = X1)

# Wrangle data
# ------------------------------------------------------------------------------
my_data <- my_data_raw %>% 
  select(aa:V) %>%
  slice(1:20)

# Write data
# ------------------------------------------------------------------------------
write_tsv(x = my_data,
          path = "data/01_my_data.tsv")
