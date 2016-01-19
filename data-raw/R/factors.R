### factors.R --- 
## Filename: factors.R
## Description: Dealing with factors
## Author: Noah Peart
## Created: Mon Jan 18 14:08:25 2016 (-0500)
## Last-Updated: Mon Jan 18 15:10:56 2016 (-0500)
##           By: Noah Peart
######################################################################

##' If the underlying variable is numeric, like PPLOT,
##' orders the factor numerically, otherwise uses a standard sort
##' @title Level ordering
##' @param v Variable to convert to factor
##' @importFrom stringi stri_detect
##' @return Vector containing order of levels.
##' @export
levOrder <- function(v) {
    if (any(stringi::stri_detect(v, regex="[[:alpha:]]"), na.rm=TRUE)) {
        sort(unique(na.omit(v)))
    } else sort(unique(as.numeric(as.character(v))))
}


make_factor <- function(col, data, drop=TRUE) {
  ord <- levOrder(data[[col]])

  if (inherits(data, 'data.table')) {
    data[, get(col) := factor(get(col), levels=ord)]
    # if (drop) data[, get('col') := droplevels(get('col'))]
    return( invisible() )
  } else 
    data[[col]] <- factor(data[[col]], levels=ord)
  data
}


