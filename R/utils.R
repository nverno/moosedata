##' Grep indices ordered by year
##' Currently this is used in the cleaning of the permanent and transect data.
##' @title Grep by year order
##' @param coln Column
##' @param yrs Years
##' @param dat data
##' @return list of columns
##' @export
grepInOrder <- function(coln, yrs, dat) {
    unlist(sapply(paste0(coln, yrs), function(x) grep(x, names(dat))))
}

##' Convert polar coordinates to cartesian
##' @param r Radius
##' @param theta Angle
##' @param deg Degrees (default to FALSE meaning use radians)
##' @param recycle Recycle radius values
##' @return cartesian coordinates
##' @export
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

##' Remove nulls/empty values from list
##' @title Remove null/empty values from list
##' @param lst Input list
##' @return List with elements removed
##' @export
nonEmpty <- function(lst) lst[sapply(lst, function(i) !is.null(i) && length(i))]

##' If the underlying variable is numeric, like PPLOT,
##' orders the factor numerically, otherwise uses a standard sort
##' @title Level ordering
##' @param v Variable to convert to factor
##' @importFrom stringr str_detect
##' @return Vector containing order of levels.
##' @export
levOrder <- function(v) {
    if (any(stringr::str_detect(v, "[[:alpha:]]"), na.rm=TRUE)) {
        sort(unique(na.omit(v)))
    } else sort(unique(as.numeric(as.character(v))))
}
