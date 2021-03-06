source('data-raw/R/check_depends.R')  # uses devtools to install from github

## Required packages:
## - list github depends under gitpkgs
pkgs <- c("devtools", "dplyr", "haven", "data.table", "stringi", "readxl")
gitpkgs <- c('nverno'='sync.afs', 
             'leeper'='rio')  # 'username'='repo'
check_depends(packages=pkgs, gitpackages=gitpkgs)

## may use some packages (ie. stringi)
source('data-raw/R/utils.R')

## Check AFS connection
connected <- sync.afs::check_afs()
if (!connected) stop("Unable to reach AFS")
path <- sync.afs::get_afs()

compress_type <- 'xz'

## source("data-raw/pp_clean.R")             # remake pp.rda/pp_raw.rda

## Transect data
## source("data-raw/tp_clean.R")             # remkae tp.rda/tp_raw.rda

## Location data
## source('data-raw/moose_locations.R')      # remake locations.rda
## source('data-raw/split_agg_locations.R')  # remake the split location data
