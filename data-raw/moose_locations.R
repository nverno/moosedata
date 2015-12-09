######################################################################
## There are a few different types of location data:
## - Permanent plots: PPLOT
## - Transect Plots: TRAN, each with associated TPLOT values
## - contours: CONTNAM, each with associated STPACE values
## - others: if none of the above, then refer to LABEL
library(data.table)
library(xlsx)

## get DEMSLOPE from PP_DEMSLOPE, lat/long is same in both files
pploc <- data.table::fread('data-raw/raw/PP_DEMSLOPE.csv')
locs <- read.xlsx2('data-raw/raw/GPS_ALL.xlsx', sheetIndex = 1, stringsAsFactors=FALSE)

## Fix up locs: all columns are characters to start
## Add NAs
setDT(locs)
for (j in seq_along(locs))
    set(locs, i = grep("^\\s*$", locs[[j]]), j = j, value=NA_character_)

## Fix dates
locs[, DATE := as.Date(as.numeric(locs$DATE)-25569, origin="1970-01-01"),]

## Column types
numCols <- c("TPLOT", "STPACE", "LONG", "LAT", "POINT_X", "POINT_Y")
factCols <- c("PPLOT", "TRAN", "CONTNAM")
for (col in numCols) set(locs, j=col, value=as.numeric(locs[[col]]))

## levOrder from utils.R
for (col in factCols)
    set(locs, j=col, value=factor(locs[[col]], levels=levOrder(locs[[col]])))

## Interp column can be T/F
locs[,INTERP := ifelse(is.na(INTERP), FALSE, TRUE)]

## Add POINT_X, POINT_Y to lng, lat where INTERP == TRUE
locs[INTERP == TRUE, `:=`(LONG=POINT_X, LAT=POINT_Y)]

## add DEMSLOPE from pplocs into locs
pploc[,PPLOT := factor(PPLOT, levels=levOrder(PPLOT))]
locs[!is.na(PPLOT),DEMSLOPE := pploc[["DEMSLOPE"]]]

## Rename LAT/LONG to lat/lng
setnames(locs, c("LAT", "LONG"), c("lat", "lng"))

## Condense type of location: PPLOT/TRAN/CONTNAM/OTHER
locs[,OTHER := ifelse(is.na(PPLOT) & is.na(TRAN) & is.na(CONTNAM), LABEL, NA)]

## Location type: "TYPE", and its value: "VALUE"
locs <- melt(locs, variable.name = "TYPE", value.name = "VALUE",
             measure.vars = c('PPLOT', 'TRAN', 'CONTNAM', 'OTHER'), na.rm=TRUE)

## Save as locations.rda
locations <- locs
save(locations, file="data/locations.rda", compress=compress_type)
