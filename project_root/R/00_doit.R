# Run all scripts
# ------------------------------------------------------------------------------
# Set directory
setwd("/cloud/project/project_root")

source(file = "R/01_load.R")
source(file = "R/02_clean.R")
source(file = "R/03_augment.R")
source(file = "R/04_analysis_i.R")
