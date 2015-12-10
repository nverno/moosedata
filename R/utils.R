## grep indices ordered by year
grepInOrder <- function(coln, yrs, dat) {
    unlist(sapply(paste0(coln, yrs), function(x) grep(x, names(dat))))
}

## Polar to cartesian
## deg: if input theta is in degrees
pol2cart <- function(r, theta, deg = FALSE, recycle = FALSE) {
    if (deg) theta <- theta * pi/180
    if (length(r) > 1 && length(r) != length(theta) && !recycle)
        stop("'r' vector different length than theta, if recycling 'r' values is desired 'recycle' must be TRUE")
    xx <- r * cos(theta)
    yy <- r * sin(theta)
    ## Account for machine error in trig functions
    xx[abs(xx) < 2e-15] <- 0
    yy[abs(yy) < 2e-15] <- 0
    out <- cbind(xx, yy)
    colnames(out) <- c("x", "y")
    return( out )
}

## remove nulls/empty values from list
nonEmpty <- function(lst) lst[sapply(lst, function(i) !is.null(i) && length(i))]

## If the underlying variable is numeric, like PPLOT,
## lets order the factor numerically, otherwise use a standard
## sort
levOrder <- function(v) {
    if (any(stringr::str_detect(v, "[[:alpha:]]"), na.rm=TRUE)) {
        sort(unique(na.omit(v)))
    } else sort(unique(as.numeric(as.character(v))))
}
