### convert_columns.R --- 
## Filename: convert_columns.R
## Description: Convert columns to specified types
## Author: Noah Peart
## Created: Thu Jan 14 01:16:55 2016 (-0500)
## Last-Updated: Tue Jan 19 16:36:08 2016 (-0500)
##           By: Noah Peart
######################################################################
## Note: generally assumes data.tables
source('factors.R')

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

##' Keep only selected columns
##' @title Drop extra columns
##' @param cols Columns to keep
##' @param data Data
##' @param patterns If specified, the columns patterns are expanded
trim_data <- function(cols, data, patterns=TRUE) {
    if (patterns) cols <- get_columns(cols, data)
    if (length(ns <- setdiff(names(data), names(cols))))
        data[, ns := NULL, with=FALSE]
}

##' Convert/check columns to specified types.
##' \description{
##'   Checking:
##'     - non-factor types: a simple `==` test is done before/after.
##'     - factors: check that before vector == as.character(new vector)
##' }
##' @title Convert column types
##' @param cols Named vector: names are variable names, values are types.
##' @param data Data to convert/check types.
##' @param patterns if TRUE, then the column names are expanded with get_columns
##' @param check If specified, an attempt is made to check that the conversion works (default TRUE).
##' @param use_factors If specified, use factors instead of strings (default FALSE).
##' @export
convert_columns <- function(cols, data, patterns=TRUE, check=TRUE, use_factors=FALSE) {
  if (patterns) cols <- get_columns(cols, data)
  if (check) backup <- copy(data)
  if (!use_factors) cols[cols == 'factor'] <- 'character'

  non_factors <- cols[cols != 'factor']
  factors <- cols[cols == 'factor']

  ## Convert non-factor columns
  data[, names(non_factors) := Map(function(col, type) 
    as(get(col), type), names(non_factors), as.vector(non_factors)),
    with=FALSE]

  ## Convert factors
  if (use_factors)
      data[, names(factors) := lapply(names(factors), function(x) {
          factor(get(x), levels=levOrder(get(x)))})]
      
  if (check) {
      test <- backup[, mapply(function(col, type) {
          if (type == 'factor') all(as.character(data[[col]]) == get(col), na.rm=TRUE)
          else all(data[[col]] == get(col), na.rm=TRUE)
      }, names(cols), as.vector(cols))]
      if (sum(!test) > 0) 
          stop(sprintf('Columns failed conversion check: %s',
                       paste(names(cols)[!test])))
  }
}

