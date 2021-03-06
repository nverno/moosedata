source("R/utils.R")
library(data.table)
library(dplyr)
load('data/locations.rda')
load('data/pp.rda')
load('data/tp.rda')
locs <- locations

################################################################################
##
##                              Permanent Plots
##
################################################################################
## Add elevcl/aspcl/soilcl
if (!exists("pp")) stop( "Load permanent plot data first." )
agg <- setDT(pp)[,lapply(.SD, unique),by=PPLOT,
                 .SDcols=c("ELEVCL", "ASPCL", "SOILCL","ELEV","ASP")]
agg[, PPLOT:=as.character(PPLOT)]

## Isolate the permanent plot locations
pps <- locs[TYPE == 'PPLOT',]
pps[, PPLOT:=VALUE]

## merge
res <- left_join(pps, agg, by="PPLOT")
res[, PPLOT := factor(PPLOT, levels=levOrder(PPLOT))]
keeps <- c('PPLOT', 'lng', 'lat', 'DATE', 'INTERP', 'DEMSLOPE', 'ELEVCL',
           'ASPCL', 'SOILCL', 'ELEV', 'ASP', 'LABEL')
pploc <- res[!is.na(PPLOT), keeps, with=FALSE]
setorder(pploc, PPLOT)
setDT(pploc)  # dont wnat the tbl_dt, tbl classes

################################################################################
##
##                              Transect Plots
##
################################################################################
## Add ELEVCL/ASPCL/SOILCL
if (!exists("tp")) stop( "Load transect data first." )
agg <- setDT(tp)[,lapply(.SD, unique), by=list(TRAN, TPLOT),
                 .SDcols=c('ELEVCL', 'ASPCL', 'ASP', 'ELEV')]

## Isolate transect locations
tps <- locs[TYPE == 'TRAN',]
tps[,TRAN := VALUE]

## merge
res <- left_join(tps, agg, by=c("TRAN", "TPLOT"))
keeps <- c("TRAN", "TPLOT", "lng", "lat", "DATE", "INTERP", "ELEVCL",
           "ASPCL", "ELEV", "ASP", "LABEL")
tploc <- res[!is.na(TRAN), keeps, with=FALSE]
setDT(tploc)

################################################################################
##
##                               Labels/Popups
##
################################################################################
## Create popup labels (wrap in HTML when used)
## Generic popup, variables must be in mooseloc data
## Not actually using this anymore
popFn <- function(dt) {
    pps <- sprintf("Plot: %s<br/>Slope: %.2f", dt$VALUE, dt$DEMSLOPE)
    tps <- sprintf("Transect: %s<br/>Plot: %g", dt$VALUE, dt$TPLOT)
    conts <- sprintf("Contour: %s<br/>Pace: %g", dt$VALUE, dt$STPACE)
    other <- sprintf("Other: %s", dt$VALUE)
    switch(unique(as.character(dt$TYPE)),
           'PPLOT'=pps,
           'TRAN'=tps,
           'CONTNAM'=conts,
           'OTHER'=other)
}
## mooseloc[, popup := popFn(.SD), by=TYPE,
##          .SDcols=c("TYPE","DEMSLOPE","TPLOT","STPACE","LABEL","VALUE")]

## Permanent plot
ppPopFn <- function(dat) {
    sprintf("Plot: %s<br/>Elev: %g<br/>Soil: %s", as.character(dat$PPLOT),
            dat$ELEV, as.character(dat$SOILCL))
}

## Transect
tpPopFn <- function(dat) {
    sprintf("Tran: %s<br/>Plot: %g<br/>Elev: %g", as.character(dat$TRAN),
            dat$TPLOT, dat$ELEV)
}

## Contours
contPopFn <- function(dat) {
    sprintf("Contour: %s<br/>Pace: %g", dat$VALUE, dat$STPACE)
}

## Other locations
otherPopFn <- function(dat) {
    sprintf("Other: %s", dat$VALUE)
}

## Add labels to the subsets for leaflet
## `id` column is going to used to assign layerIds I guess, I was
## having weird problems with rownames and data.tables (or something)
## otherloc will be non permanent/transect data for now
otherloc <- locs[!(TYPE %in% c('TRAN', 'PPLOT', 'CONTNAM')),]
otherloc[, otherLab := otherPopFn(.SD), .SDcols = c('VALUE')]
otherloc[,id := seq.int(.N)]

contloc <- locs[TYPE == 'CONTNAM',]
contloc[, contLab := contPopFn(.SD), .SDcols = c('VALUE', 'STPACE')]
contloc[, id := seq.int(seq.int(.N))]

pploc[, ppLab := ppPopFn(.SD), .SDcols = c('PPLOT', 'ELEV', 'SOILCL')]
pploc[, id := seq.int(.N)]

tploc[, tpLab := tpPopFn(.SD), .SDcols=c('TRAN', 'TPLOT', 'ELEV')]
tploc[, id := seq.int(.N)]

## Remove some unnecessary columns
pploc[, INTERP := NULL]  # no interpolated plots
contloc[, c("TPLOT", "POINT_X", "POINT_Y", "DEMSLOPE", "TYPE") := NULL, with=FALSE]
otherloc[, c("TPLOT", "POINT_X", "POINT_Y", "DEMSLOPE", "STPACE", "VALUE",
             "TYPE", "INTERP") := NULL, with=FALSE]

## Save data
other_loc <- otherloc
contour_loc <- contloc
pp_loc <- pploc
tp_loc <- tploc

save(other_loc, file="data/other_loc.rda", compress = compress_type)
save(contour_loc, file="data/contour_loc.rda", compress=compress_type)
save(pp_loc, file="data/pp_loc.rda", compress=compress_type)
save(tp_loc, file='data/tp_loc.rda', compress=compress_type)

