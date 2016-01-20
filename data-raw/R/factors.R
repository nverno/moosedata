### factors.R --- 
## Filename: factors.R
## Description: Dealing with factors
## Author: Noah Peart
## Created: Mon Jan 18 14:08:25 2016 (-0500)
## Last-Updated: Tue Jan 19 16:26:24 2016 (-0500)
##           By: Noah Peart
######################################################################

##' If the underlying variable is numeric, like PPLOT,
##' orders the factor numerically, otherwise uses a standard sort
##' @title Level ordering
##' @param v Variable to convert to factor
##' @param include.empty If specified, include empty strings as factors
##' @param empty If \code{include.empty} is true, specifies location of empty level.
##' @importFrom stringi stri_detect
##' @return Vector containing order of levels.
##' @export
levOrder <- function(v, include.empty=TRUE, empty=c('back', 'front')) {
    if (is.factor(v)) v <- as.character(v)
    res <- if (any(stringi::stri_detect(v, regex="[[:alpha:]]"), na.rm=TRUE)) 
        sort(unique(na.omit(v)))
    else sort(unique(as.numeric(as.character(v))))
    res <- res[nzchar(res)]
    if (include.empty)
        res <- if (match.arg(empty) == 'back') c(res, '') else c('', res)
    res
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
