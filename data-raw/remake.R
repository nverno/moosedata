source('R/utils.R')
source('data-raw/R/check_depends.R')

## Required packages:
## - list github depends under gitpkgs
pkgs <- c("devtools", "dplyr", "haven", "data.table", "stringi", "readxl")
gitpkgs <- c('nverno'='sync.afs', 
             'leeper'='rio')  # 'username'='repo'
check_depends(packages=pkgs, gitpackages=gitpkgs)

## Check AFS connection
connected <- sync.afs::check_afs()
if (!connected) stop("Unable to reach AFS")
path <- sync.afs::get_afs()

## source("data-raw/pp_clean.R")             # remake pp.rda/pp_raw.rda

## Transect data
## source("data-raw/tp_clean.R")             # remkae tp.rda/tp_raw.rda

## Location data
## source('data-raw/moose_locations.R')      # remake locations.rda
## source('data-raw/split_agg_locations.R')  # remake the split location data

## Cleanup: this compresses the raw files and removes the raw versions
## comp_raw(rawfiles, compress_type)
## unlink(file.path("data-raw", rawfiles), recursive = TRUE, force=TRUE)

