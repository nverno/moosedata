### pp_plots.R --- 
## Filename: pp_plots.R
## Description: Make plot level variables dataset for permanent plots
## Author: Noah Peart
## Created: Fri Jan 22 16:26:42 2016 (-0500)
## Last-Updated: Sat Jan 23 14:39:12 2016 (-0500)
##           By: Noah Peart
######################################################################
## Packages: data.table, stringi, nverno/sync.afs
## Tests: ../testthat/tests/test-pp_plots.R
## Variables:
## - compress_type: compression to use to save data
## - path: path to AFS root directory
## - dkey: data key linking R files to master files

## Pull master files from AFS
if (!exists('dkey')) dkey <- copy(sync.afs::data_key)
if (!exists('path')) path <- sync.afs::get_afs()
pp_raw <- sync.afs::get_data('pp_raw', path, dkey)
pp_demslope <- sync.afs::get_data('pp_demslope', path, dkey)
setnames(pp_raw, names(pp_raw), toupper(names(pp_raw)))
setnames(pp_demslope, names(pp_demslope), toupper(names(pp_demslope)))

## Plot-level variables
## From pp_demslope (all)
vars1 <- c('PPLOT'='integer', 'LAT'='double', 'LONG'='double', 'SLOPEDEM'='double')

## From pp_raw
## Unsure: MICR
vars2 <- c(
    'PPLOT'='integer', 'SPLOT'='integer', 'SPLOT98'='integer',
    'ELEV'='integer', 'ELEVCL'='factor',
    'ASP'='integer', 'ASPCL'='factor',
    'SLOPCL'='factor', 'SLOPE8687'='double',
    'SOILCL'='factor'  # other soil
)

## Not interested in spruce ears here: keep regular and met data
pp_raw <- pp_raw[CLASS %in% c('P', 'M'), ]

## Variables to derive:
## YEAR: year of sampling (since different procedures for different years)
## SAPS: indicates if saplings were sampled in subplot for a given year/species
## FREESUB: free subplot for a given year (if applicable)

## Years
years <- stringi::stri_extract_last_regex(names(pp_raw), '[0-9]+')
years <- years[!is.na(years) & nchar(years) > 1]


