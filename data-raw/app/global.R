### global.R --- 
## Filename: global.R
## Description: 
## Author: Noah Peart
## Created: Sat Jan 23 14:47:08 2016 (-0500)
## Last-Updated: Sun Jan 24 00:23:44 2016 (-0500)
##           By: Noah Peart
######################################################################
source("utils.R")

library(data.table)
library(shiny)
library(shinydashboard)
library(ggplot2)
library(ggthemes)

################################################################################
##
##                                Data setup
##
################################################################################
if (!exists('dkey')) dkey <- copy(sync.afs::data_key)
if (!exists('path')) path <- sync.afs::get_afs()
pp_raw <- sync.afs::get_data('pp_raw', path, dkey)
pp_demslope <- sync.afs::get_data('pp_demslope', path, dkey)
setnames(pp_raw, names(pp_raw), toupper(names(pp_raw)))
setnames(pp_demslope, names(pp_demslope), toupper(names(pp_demslope)))

## Not interested in spruce ears here: keep regular and met data
pp_raw <- pp_raw[CLASS %in% c('P', 'M'), ]

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

################################################################################
##
##                                Global vars
##
################################################################################
with_defaults <- function(x, defaults) {
    args <- intersect(names(defaults), names(formals(x)))
    formals(x)[args] <- defaults[args]
    x
}

plotPar <- list(
    outputs = list(
        background='blue', 
        status='primary',
        solidHeader=TRUE, 
        collapsible=TRUE
    ),
    inputs = list(
        title='Input',
        background='black'
        ## solidHeader=TRUE
    ),
    ggdefaults <- list(theme_bw())
)

