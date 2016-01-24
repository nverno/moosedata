## Packages: data.table, stringi, nverno/sync.afs
## Tests: ../testthat/tests/test-pp.R
## Variables:
## - compress_type: compression to use to save data
## - path: path to AFS root directory
## - dkey: data key linking R files to master files

## Pull master files from AFS
if (!exists('dkey')) dkey <- copy(sync.afs::data_key)
if (!exists('path')) path <- sync.afs::get_afs()
pp_raw <- sync.afs::get_data('pp_raw', path, dkey)
pp_demslope <- sync.afs::get_data('pp_demslope', path, dkey)

## Helper files
source('data-raw/R/convert_columns.R', chdir=TRUE)

################################################################################
##
##                              Permanent Plots
##
################################################################################
pp <- copy(pp_raw)

## Columns
setnames(pp, names(pp), toupper(names(pp)))
setnames(pp_demslope, names(pp_demslope), toupper(names(pp_demslope)))

## Ignored
ignored <- c('DECW[0-9]+', 'CLITOP[0-9]+', 'WD89OL', 'WD89AV', 'EXWI89', 'LVBD89',
             'TOTHT[0-9]+', 'HTBCR[0-9]+', 'COND[0-9]+', 'SNHT[0-9]+', 'DECAY[0-9]+',
             'AOL[0-9]+', 'SNAZ[0-9]+', 'WD[0-9]+', 'ICE[0-9]+', 'DATE[0-9]+',
             'NOTE[0-9]+', 'DAH[0-9]+', 'LAND', 'MICR', 'BQCRDX', 'BQCRDY',
             'CLASS[0-9]+', 'EX[0-9]+', 'OUT', 'CQUDX[0-9]+', 'CQUDY[0-9]+',
             'CQCRDX[0-9]+', 'FLAG', 'CODE[0-9]+A', 'CENSUS[0-9]+', 'HERB[0-9_]+',
             'DECAY', 'DSAPP[0-9]+', 'DSAPA[0-9]+', 'DSAPB[0-9]+', 'TAGOLD',
             'PISAP[0-9]+', 'HRB[0-9_]+', 'SHRB[0-9_]+', 'SPLOT[0-9]+',
             'SPCRT', 'MDBH[0-9]+', 'BPCRDX'='double', 'BPCRDY'='double')

## 86/87 crown dimensions
crown_dims <- c('CRHT(86|87)'='double', 'CLONG(86|87)'='double', 'CAZLNG(86|87)'='double', 
                'CPERP(86|87)'='double')

## defaults
keepers <- c(
    ## *** Plot/subplot level variables ***
    'PPLOT'='integer',
    'SPLOT'='integer',
    'ELEV'='integer',
    'ELEVCL'='factor',
    'ASPCL'='factor',
    'ASP'='integer',
    'SOILCL'='factor',
    'SLOPE8687'='integer',
    'SLOPCL'='factor',
    ## *** Individual variables ***
    'TAG'='character',
    'SPEC'='factor', 
    'CLASS'='factor',
    'YRTAG'='integer',
    'YRMORT'='integer',
    'CSAP[0-9]+'='factor',
    'STAT[0-9]+'='factor', 
    'DBH[0-9]+'='double',
    'EBV[0-9]+'='double',   # estimated bole volumes
    'EHT[0-9]+'='integer',  # indicates estimated height
    'DECM[0-9]+'='integer',
    'HTTCR[0-9]+'='double',
    'CPOS[0-9]+'='factor',
    'HT[0-9]+'='double',
    'CII[0-9]+'='integer', 
    'BQUDX'='integer',
    'BQUDY'='integer'
)

## *** NOTES ***
## - remove 0 DBHS
## - CSAP is 'Y' in PPLOT/SPLOT/SPEC combinations where saplings were sampled
## Check:
## pp[ CLASS=='P', sum(CSAP8788 == 'Y')>0 & sum(CSAP8788 == 'N')>0,
##    by=c('PPLOT', 'SPLOT', 'SPEC')][, sum(V1) ]


## Trim extra columns and convert (not factors until after wide->long)
trim_data(keepers, pp)
convert_columns(keepers, pp)

## Slope column?
## For now, just remove year identifiers
setnames(pp, 'SLOPE8687', 'SLOPE')

## Reshape to long
tst <- dcast(pp, )

## tidy, wide -> long
## yrs <- c(86, 87, 98, 10)
## cols <- grep("^STAT|^DBH|^ht[0-9]+|HTTCR|bv|PPLOT|SPLOT$|^DECM|TAG$|SPEC|ASP|ELEV|BQUDX|BQUDY|CLASS$|^canht|^CPOS|YRMORT|SOILCL", names(pp))

## Remove plots 1:3, keep only certain years
## dat <- pp[PPLOT > 3, cols, with=FALSE]
## cols <- grep("[A-Za-z]+$|.*86$|.*87$|.*98$|.*10$", names(dat))
## dat <- dat[, cols]  # remove other year columns

## Basal area
## dat[,paste0("BA", yrs)] <- 0.00007854 * dat[, paste0("DBH", yrs)]**2

## Growth columns
## vars <- c("DBH", "ht", "bv", "canht", "HTTCR", "BA")
## for (v in vars) {
##     dat[,paste0("g_", v, 86)] <- (dat[,paste0(v, 98)] - dat[,paste0(v, 86)])/12
##     dat[,paste0("g_", v, 87)] <- (dat[,paste0(v, 98)] - dat[,paste0(v, 87)])/11
##     dat[,paste0("g_", v, 98)] <- (dat[,paste0(v, 10)] - dat[,paste0(v, 98)])/12
## }

## Prior growth columns
## for (v in vars) {
##     dat[,paste0("pg_", v, 98)] <- (dat[,paste0(v, 98)] - dat[,paste0(v, 86)])/12
##     inds <- !is.na(dat[,paste0(v, 87)]) & !is.na(dat[,paste0(v, 98)])
##     dat[inds, paste0("pg_", v, 98)] <- (dat[inds, paste0(v, 98)] - dat[inds, paste0(v, 87)])/11
##     dat[,paste0("pg_", v, 10)] <- (dat[,paste0(v, 10)] - dat[,paste0(v, 98)])/12
## }

## Trees that died/aren't in next census period
## dat[,"DIED86"] <- ifelse(dat[,"STAT86"] == "ALIVE" & dat[,"STAT98"] != "ALIVE", 1, 0)
## dat[,"DIED87"] <- ifelse(dat[,"STAT87"] == "ALIVE" & dat[,"STAT98"] != "ALIVE", 1, 0)
## dat[,"DIED98"] <- ifelse(dat[,"STAT98"] == "ALIVE" & dat[,"STAT10"] != "ALIVE", 1, 0)
## dat[,"DIED10"] <- NA

## Trees that were actually reported dead
died <- c("DEAD", "PD")  # identifies for dead
dat[,"rDIED86"] <- ifelse(dat[,"STAT86"] == "ALIVE" & dat[,"STAT98"] %in% died, 1, 0)
dat[,"rDIED87"] <- ifelse(dat[,"STAT87"] == "ALIVE" & dat[,"STAT98"] %in% died, 1, 0)
dat[,"rDIED98"] <- ifelse(dat[,"STAT98"] == "ALIVE" & dat[,"STAT10"] %in% died, 1, 0)
dat[,"rDIED10"] <- NA

dat[,paste0("g_", vars, 10)] <- NA
dat[,paste0("pg_", vars, 86)] <- NA
dat[,paste0("pg_", vars, 87)] <- NA
dat$CPOS86 <- NA  # no crown positions measured in 86
dat <- reshape(dat, times = yrs, direction = "long",
               varying = list(
                   BA = grepInOrder("^BA", yrs, dat),
                   gBA = grepInOrder("^g_BA", yrs, dat),
                   STAT = grepInOrder("^STAT", yrs, dat),
                   DBH = grepInOrder("^DBH", yrs, dat),
                   gDBH = grepInOrder("^g_DBH", yrs, dat),
                   HT = grepInOrder("^ht", yrs, dat),
                   gHT= grepInOrder("^g_ht", yrs, dat),
                   BV = grepInOrder("^bv", yrs, dat),
                   gBV = grepInOrder("^g_bv", yrs, dat),
                   HTOBS = grepInOrder("^HTTCR", yrs, dat),
                   gHTOBS = grepInOrder("^g_HTTCR", yrs, dat),
                   CANHT = grepInOrder("^canht", yrs, dat),
                   gCANHT = grepInOrder("^g_canht", yrs, dat),
                   DECM = grepInOrder("DECM", yrs, dat),
                   CPOS = grepInOrder("^CPOS", yrs, dat),
                   DIED = grepInOrder("^DIED", yrs, dat),
                   pgBA = grepInOrder("^pg_BA", yrs, dat),
                   pgDBH = grepInOrder("^pg_DBH", yrs, dat),
                   pgBV = grepInOrder("^pg_bv", yrs, dat),
                   pgHTOBS = grepInOrder("^pg_HTTCR", yrs, dat),
                   pgHT = grepInOrder("^pg_ht", yrs, dat),
                   pgCANHT = grepInOrder("^pg_canht", yrs, dat),
                   rDIED = grepInOrder("^rDIED", yrs, dat)
               ),
               v.names = c("BA", "gBA", "STAT", "DBH", "gDBH", "HT", "gHT", "BV", "gBV",
                   "HTOBS", "gHTOBS", "CANHT", "gCANHT", "DECM", "CPOS", "DIED",
                           "pgBA", "pgDBH", "pgBV", "pgHTOBS", "pgHT", "pgCANHT",
                           "rDIED"),
               timevar = "YEAR")

## Reorder/drop levels
dat$YEAR <- factor(dat$YEAR, levels=c(86, 87, 98, 10))
dat$ELEVCL <- factor(dat$ELEVCL, levels=levels(dat$ELEVCL)[c(3,4,2,1)])
pp <- dat[!is.na(dat$DBH) | !is.na(dat$HT), ]

## Drop/combine factor levels
pp$ELEVCL <- droplevels(pp$ELEVCL)  # remove level ""
pp$allSPEC <- pp$SPEC  # SPEC with all levels
levels(pp$SPEC)[levels(pp$SPEC) %in% c('', 'UNCO', 'UNDE', 'UNID')] <- 'UNID'
levels(pp$SPEC)[grep('^BE', levels(pp$SPEC))] <- 'BESPP'
pp$SPEC <- droplevels(factor(pp$SPEC, levels=sort(levels(pp$SPEC))))

pp$STAT <- droplevels(pp$STAT)
levels(pp$STAT) <- c("UNID", "ALIVE", "DEAD")
pp$ASPCL <- droplevels(pp$ASPCL)
pp$SOILCL <- droplevels(pp$SOILCL)

## Add location data
pp <- left_join(pp, pploc, by='PPLOT')
names(pp)[names(pp) %in% c("LAT", "LONG")] <- c("lat", "lng")

## Factor plots
pp$PPLOT <- factor(pp$PPLOT)

## Save
save(pp, file = "data/pp.rda", compress=compress_type)



