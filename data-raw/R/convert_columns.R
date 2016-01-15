### convert_columns.R --- 
## Filename: convert_columns.R
## Description: Convert columns to specified types
## Author: Noah Peart
## Created: Thu Jan 14 01:16:55 2016 (-0500)
## Last-Updated: Thu Jan 14 19:40:19 2016 (-0500)
##           By: Noah Peart
######################################################################

##' Expand named vector of patterns=type for matches in data.
##' @title Expand column matches
##' @param cols Named vector of form: c(column_names = column_type)
##' @param data Data
##' @return Named vector of column matches with associated type.
get_columns <- function(cols, data) {
    patts <- paste0('^', names(cols), '$')
    expand <- function(patt, type) {
        ms <- grep(patt, names(data), value=TRUE)
        if (length(ms)) setNames(rep(type, length(ms)), ms)
    }
    unlist(Map(expand, patts, as.vector(cols), USE.NAMES=FALSE))
}

convert_columns <- function(cols, data, check=TRUE) {
    non_factors <- cols[as.vector(cols) != 'factor']
    factors <- cols[!(cols %in% non_factors)]
    if (check) pp1 <- copy(pp)

    ## Convert non-factor columns
    pp[, names(non_factors) := mapply(function(col, type) 
        as(get(col), type), names(non_factors), as.vector(non_factors))]
    
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


