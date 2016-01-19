### trseedmas11_clean.R --- 
## Filename: trseedmas11_clean.R
## Description: High high tree/seedling/sapling data
## Author: Noah Peart
## Created: Mon Jan 18 19:56:20 2016 (-0500)
## Last-Updated: Mon Jan 18 20:06:21 2016 (-0500)
##           By: Noah Peart
######################################################################
## Refer to most of the variables in seesapmas11_clean

keepers <- c(
    'HR',           # direction relative to the upslope (polar angle)
    'DIST',         # radial value of polar coordinates
    'FIELD',        # When in the season the data was collected
#    'SLOPE[0-9]+',  # not sure which to use?
    'MICR',         # whether concave or flat
    'ELEVCL'        # All HH
)
