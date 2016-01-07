### copy_data.R --- 
## Filename: copy_data.R
## Description: Copy data from AFS to directory
## Author: Noah Peart
## Created: Wed Jan  6 20:10:56 2016 (-0500)
## Last-Updated: Wed Jan  6 20:13:13 2016 (-0500)
##           By: Noah Peart
######################################################################
source('data-raw/R/check_depends.R')
pkgs <- c('data.table', 'haven', 'dplyr', 'readxl')
gitpkgs <- c('nverno'='sync.afs')
check_depends(pkgs, gitpkgs)

