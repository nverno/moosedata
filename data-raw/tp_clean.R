library(dplyr)
source("R/utils.R")

tp <- sync.afs::get_data('tp_raw')
tp <- read.csv("data-raw/raw/transect.csv")
tp_raw <- tp
save(tp_raw, file='data/tp_raw.rda', compress=compress_type)

################################################################################
##
##                                 Transects
##
################################################################################
## tidy, wide -> long
yrs <- c(87, 98, 99, 10, 11)
cols <- grep("canht|^STAT|^DBH|^HT[[:digit:]]|^ht[[:digit:]]+|^bv|TRAN|TPLOT|TAG|SPEC|ASP|ELEV|DIST|^HR$|TRAD|ABSRAD", names(tp))
dat <- tp[, cols]
cols <- grep("[A-Za-z]+$|87$|98$|99$|10$|11$", names(dat))
dat <- dat[, cols]  # remove other year columns
dat[, paste0("HT", c(87, 98, 10))] <- rep(NA, nrow(dat))
dat <- rename(dat, ABSRAD99=ABSRAD, TRAD99=TRAD)
dat[, paste0("ABSRAD", c(87, 98, 10))] <- NA
dat[, paste0("TRAD", c(87, 98, 10))] <- NA

## Growth columns
## 87, 98 => no S transects, no HH of LL elevations
dat[, paste0("BA",yrs)] <- 0.00007854 * dat[,paste0("DBH", yrs)]**2
## vars <- c("DBH", "ht", "bv", "canht", "HTTCR", "BA")
## for (v in vars) {
##     dat[,paste0("g_", v, 86)] <- (dat[,paste0(v, 98)] - dat[,paste0(v, 86)])/12
##     dat[,paste0("g_", v, 87)] <- (dat[,paste0(v, 98)] - dat[,paste0(v, 87)])/11
##     dat[,paste0("g_", v, 98)] <- (dat[,paste0(v, 10)] - dat[,paste0(v, 98)])/12
## }

dat <- reshape(dat, times = yrs, direction = "long",
               varying = list(
                   TRAD = grepInOrder("^TRAD", yrs, dat),
                   ABSRAD = grepInOrder("^ABSRAD", yrs, dat),
                   STAT = grepInOrder("^STAT", yrs, dat),
                   DBH = grepInOrder("^DBH", yrs, dat),
                   BV = grepInOrder("^bv", yrs, dat),
                   BA = grepInOrder("^BA", yrs, dat),                   
                   HTOBS = grepInOrder("^HT", yrs, dat),
                   HT = grepInOrder("^ht", yrs, dat),
                   CANHT = grepInOrder("canht", yrs, dat)),
               v.names = c("TRAD", "ABSRAD", "STAT", "DBH", "BV", "BA", "HTOBS", "HT", "CANHT"),
               timevar = "YEAR")
dat$YEAR <- factor(dat$YEAR)

tp <- dat[!is.na(dat$DBH) | !is.na(dat$HT) | !is.na(dat$HTOBS), ]

## Fix missing ELEVCL
tp <- tp %>% group_by(TRAN, TPLOT) %>%
  mutate(ELEVCL = as.character(ELEVCL)) %>%
  mutate(ELEVCL = ifelse(ELEVCL == "", unique(ELEVCL[ELEVCL!=""]), ELEVCL))

## Reorder levels
tp$ELEVCL <- factor(tp$ELEVCL, levels = c("L", "LL", "M", "H", "HH"))
tp$YEAR <- factor(tp$YEAR, levels = c('87', '98', '99', '10', '11'))

## Combine factor levels
tp$allSPEC <- tp$SPEC
levels(tp$SPEC)[levels(tp$SPEC) %in% c('', 'UNCO', 'UNDE', 'UNID')] <- 'UNID'
levels(tp$SPEC)[grep('^BE', levels(tp$SPEC))] <- 'BESPP'
tp$SPEC <- factor(tp$SPEC, levels=sort(levels(tp$SPEC)))

## Polar -> cartesian
coords <- pol2cart(tp$DIST, (tp$HR%%12)/12 * 2*pi + pi/2)
tp$X <- -coords[,1]
tp$Y <- coords[,2]

## Save
save(tp, file = "data/tp.rda", compress=compress_type)

