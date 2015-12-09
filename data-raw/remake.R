source('R/utils.R')
library(dplyr)  # possible improvements on read_sas
library(haven)  # read_sas
rawfiles <- c('raw', 'afs')
compress_type <- 'bzip2'

## Decompress the compressed archive of raw data files
decomp_raw()

## Permanent plot data
## pp1 <- read_sas('data-raw/afs/pptreemas10bv.sas7bdat')
## pp2 <- read.csv('data-raw/raw/pp.csv')

source("data-raw/pp_clean.R")             # remake pp.rda/pp_raw.rda

## Transect data
source("data-raw/tp_clean.R")             # remkae tp.rda/tp_raw.rda

## Location data
source('data-raw/moose_locations.R')      # remake locations.rda
source('data-raw/split_agg_locations.R')  # remake the split location data

## Cleanup: this compresses the raw files and removes the raw versions
comp_raw(rawfiles, compress_type)
