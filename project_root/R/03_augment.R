# Clear workspace
# ------------------------------------------------------------------------------
rm(list = ls())

# Load libraries
# ------------------------------------------------------------------------------
library("tidyverse")
library("broom")

# Define functions
# ------------------------------------------------------------------------------
source(file = "R/99_project_functions.R")

# Load data
# ------------------------------------------------------------------------------
my_data_clean <- read_tsv(file = "data/02_my_data_clean.tsv")

# Wrangle data
# ------------------------------------------------------------------------------
my_data_clean_aug <- my_data_clean %>%
  select(-aa) %>%
  prcomp(center = TRUE, scale = TRUE)

my_data_clean_aug <- my_data_clean_aug %>% 
  augment(my_data_clean)

my_data_clean_aug <- my_data_clean_aug%>% 
  mutate(chem_class = get_chem_class(aa))

# Write data
# ------------------------------------------------------------------------------
write_tsv(x = my_data_clean_aug,
          path = "data/03_my_data_clean_aug.tsv")
