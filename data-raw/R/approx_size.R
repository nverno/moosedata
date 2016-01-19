### approx_size.R --- 
## Filename: approx_size.R
## Description: Sizes of objects
## Author: Noah Peart
## Created: Mon Jan 18 15:04:00 2016 (-0500)
## Last-Updated: Mon Jan 18 15:35:41 2016 (-0500)
##           By: Noah Peart
######################################################################

##' Approximate size of objects in MB.
##' @title Approximate size in MB
##' @param ... objects
##' @examples
##' chars <- data.table(a = sample(letters, 1e5, TRUE))           # chars (not really)
##' string <- data.table(a = sample(state.name, 1e5, TRUE))       # strings
##' fact <- data.table(a = factor(sample(letters, 1e5, TRUE)))    # factor
##' int <- data.table(a = sample(1:26, 1e5, TRUE))                # int
##' mbs(chars, string, fact, int)
##' @export
mbs <- function(...) {
    ns <- sapply(match.call(expand.dots=TRUE)[-1L], deparse)
    vals <- mget(ns, .GlobalEnv)
    size <- if (requireNamespace('pryr', quietly=TRUE)) pryr::object_size else object.size
    cat('Sizes:\n',
        paste('\t', ns, ':', round(sapply(vals, size)/1024/1024, 3), 'MB\n'))
}
