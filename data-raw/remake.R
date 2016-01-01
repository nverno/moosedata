source('R/utils.R')
source('data-raw/check_depends.R')

## Required packages:
## - list github depends under gitpkgs
pkgs <- c("devtools", "dplyr", "haven", "data.table", "stringi")
gitpkgs <- c('nverno'='sync.afs')  # 'username'='repo'
check_depends(packages=pkgs, gitpackages=gitpkgs)

## Check AFS connection
if (!file.exists((path <- sync.afs::get_afs())))
  stop("Unable to reach %s", path)

## source("data-raw/pp_clean.R")             # remake pp.rda/pp_raw.rda

## Transect data
## source("data-raw/tp_clean.R")             # remkae tp.rda/tp_raw.rda

## Location data
## source('data-raw/moose_locations.R')      # remake locations.rda
## source('data-raw/split_agg_locations.R')  # remake the split location data

## Cleanup: this compresses the raw files and removes the raw versions
## comp_raw(rawfiles, compress_type)
## unlink(file.path("data-raw", rawfiles), recursive = TRUE, force=TRUE)

