### pp_raw.R --- 
## Filename: pp_raw.R
## Description: Make the pp_raw.rds dataset (direct translation from AFS)
## Author: Noah Peart
## Created: Fri Jan 22 16:18:20 2016 (-0500)
## Last-Updated: Fri Jan 22 16:45:53 2016 (-0500)
##           By: Noah Peart
######################################################################
## Packages: data.table, stringi, nverno/sync.afs
## Tests: ../testthat/tests/test-pp_raw.R
## Variables:
## - compress_type: compression to use to save data
## - path: path to AFS root directory
## - dkey: data key linking R files to master files

if (!exists('dkey')) dkey <- copy(sync.afs::data_key)
if (!exists('path')) path <- sync.afs::get_afs()

## Nothing to be done, just copy over
pp_raw <- sync.afs::get_data('pp_raw', path, dkey)
setnames(pp_raw, names(pp_raw), toupper(names(pp_raw)))

save(pp_raw, file='data/pp_raw.rda', compress=compress_type)
