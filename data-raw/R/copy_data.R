### copy_data.R --- 
## Filename: copy_data.R
## Description: Copy data from AFS to directory
## Author: Noah Peart
## Created: Wed Jan  6 20:10:56 2016 (-0500)
## Last-Updated: Thu Jan  7 13:11:58 2016 (-0500)
##           By: Noah Peart
######################################################################
source('data-raw/R/check_depends.R')
pkgs <- c('data.table', 'haven', 'dplyr', 'readxl')
gitpkgs <- c('nverno'='sync.afs')
check_depends(pkgs, gitpkgs)

## Copy files to 'temp'
dir.create('temp')
sync.afs::copy_files(ext='docx', outdir='temp/docs')
dats <- sync.afs::data_key[!(filetype %in% c('docx')), filetype]
sync.afs::copy_files(ext=dats, outdir='temp/data')

