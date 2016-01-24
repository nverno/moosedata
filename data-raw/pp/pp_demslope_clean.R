### pp_demslope_clean.R --- 
## Filename: pp_demslope_clean.R
## Description: Permanent plot locations(lat/lon) and slopes estimated from DEM
## Author: Noah Peart
## Created: Fri Jan 22 16:20:30 2016 (-0500)
## Last-Updated: Sun Jan 24 02:33:06 2016 (-0500)
##           By: Noah Peart
######################################################################
## Packages: data.table, stringi, nverno/sync.afs
## Tests: ../testthat/tests/test-pp.R
## Variables:
## - compress_type: compression to use to save data
## - path: path to AFS root directory
## - dkey: data key linking R files to master files

## Pull master files from AFS
if (!exists('dkey')) dkey <- copy(sync.afs::data_key)
if (!exists('path')) path <- sync.afs::get_afs()

## Nothing to be done, just copy over
pp_demslope <- sync.afs::get_data('pp_demslope', path, dkey)
setnames(pp_demslope, names(pp_demslope), toupper(names(pp_demslope)))
save(pp_demslope, file='data/pp_demslope.rda', compress=compress_type)

