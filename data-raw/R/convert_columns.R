### convert_columns.R --- 
## Filename: convert_columns.R
## Description: Convert columns to specified types
## Author: Noah Peart
## Created: Thu Jan 14 01:16:55 2016 (-0500)
## Last-Updated: Fri Jan 15 23:25:49 2016 (-0500)
##           By: Noah Peart
######################################################################

##' Expand named vector of patterns=type for matches in data.
##' @title Expand column matches
##' @param cols Named vector of form: c(column_names = column_type)
##' @param data Data
##' @return Named vector of column matches with associated type.
##' @export
get_columns <- function(cols, data) {
  patts <- paste0('^', names(cols), '$')
  expand <- function(patt, type) {
    ms <- grep(patt, names(data), value=TRUE)
    if (length(ms)) setNames(rep(type, length(ms)), ms)
  }
  unlist(Map(expand, patts, as.vector(cols), USE.NAMES=FALSE))
}

##' Convert/check columns to specified types.
##' \description{
##'   Checking:
##'     - non-factor types: a simple `==` test is done before/after.
##'     - factors: check that before vector == as.charater(new vector)
##' }
##' @title Convert column types
##' @param cols Named vector: names are variable names, values are types.
##' @param data Data to convert/check types.
##' @param patterns if TRUE, then the column names are expanded with get_columns
##' @param check If specified, an attempt is made to check that the conversion works.
##' @export
convert_columns <- function(cols, data, patterns=TRUE, check=TRUE) {
  if (patterns) cols <- get_columns(cols, data)
  if (check) pp1 <- copy(pp)
  non_factors <- cols[as.vector(cols) != 'factor']
  factors <- cols[!(cols %in% non_factors)]

  ## Convert non-factor columns
  pp[, names(non_factors) := Map(function(col, type) 
    as(get(col), type), names(non_factors), as.vector(non_factors)),
    with=FALSE]

  ## Convert factors
  
  if (check) {
    res1 <- pp[, mapply(function(col, type) 
      all(as(get(col), type) == get(col), na.rm=TRUE), 
      names(non_factors), as.vector(non_factors))]
    res2 <- pp[, mapply(function(col, type) 
      all(as(get(col), type) == get(col), na.rm=TRUE), 
      names(factors), 'factor')]
    if (sum(!res) > 0) 
      stop(sprintf('Columns failed conversion check: %s',
                   paste(names(non_factors[res]))))
  }
}

make_factor <- function(col, data, drop=TRUE) {
  ord <- levOrder(data[[col]])

  if (inherits(data, 'data.table')) {
    data[, get('col') := factor(get('col'), levels=ord), with=FALSE]
    # if (drop) data[, get('col') := droplevels(get('col'))]
    return( invisible() )
  } else 
    data[[col]] <- factor(data[[col]], levels=ord)
  data
}
