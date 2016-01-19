### seesapmas11_clean.R --- 
## Filename: seesapmas11_clean.R
## Description: Master file for seedlings and saplings on the contours
## Author: Noah Peart
## Created: Mon Jan 18 18:58:38 2016 (-0500)
## Last-Updated: Mon Jan 18 20:00:18 2016 (-0500)
##           By: Noah Peart
######################################################################
## 88: measured PIRU
## 89: went back and measured ABBA
## 80's data is offset from 90's (can't combine -- replicate samples of contour)
## Soil data is linked to combinations of CONTNAM/STPACE

keepers = c(
    'CONTNAM'='character',
    'STPACE'='integer',
    'ALONG'='numeric',
    'DISUPDN'='numeric',
    'TAG'='integer',
    'YRTAG'='integer',
    'SPEC'='character',
    'STAT[0-9]+',
    'YRMORT'='integer',
    'HT[0-9]+',
    'TERM[0-9]+',  # terminal condition
    'CII[0-9]+',
    'SUB[0-9]+',  # take the latest and combine
    'ASPCL',
    'ELEVCL',
    'DECM[0-9]+',

    ## *********************************************************
    ## Extension growth variables
    'STMLEN[0-9]+',  # stem length (distance measured along stem)
    'MINAGE[0-9]+',  # Minimum countable age,
    'D1RM[0-9]+',    # first distance remaining
    'D2RM[0-9]+',    # second distance remaining
    'EX[0-9]+',      # numbers are years going back to the 40s
    'PEX[0-9]+',     # partial extension growth
    ## *********************************************************

    ## *********************************************************
    ## Neighborhoods of seedlings/saplings (only calculated in 88)
    'TCVR88',  # total
    'NFCVR88',  # cover not including focal
    'HRB[0-9]+',  # 1st, 2nd, 3rd most coverage of neighborhood (components of NFCV)
    ## *********************************************************


    ## *********************************************************
    ## These variables are the constant for each segment/year
    ## Length along segments that species were counted
    'SDSP[0-9]+'='character',  # correspond to species
    'DSDSP[0-9]+',  # Distance measured along segment
    'NSDSP[0-9]+',  # count of seed/saps measured
    ## *********************************************************

    ## Use this to get densities
    'SGLEN[0-9]+' # one value, but labelled as '8889'/'9899' - upper/lower segment
)
