### utils.R --- 
## Filename: utils.R
## Description: 
## Author: Noah Peart
## Created: Sat Jan 23 20:37:49 2016 (-0500)
## Last-Updated: Tue Jan 26 02:07:34 2016 (-0500)
##           By: Noah Peart
######################################################################
"%||%" <- function(a, b) if (is.null(a)) b else a

################################################################################
##
##                              Some AFS utils
##
################################################################################
## Store the AFS token information
afs_cache <- new.env()

##' Check that tokens and klog are available
afs_utils <- function() {
    progs <- c('klog', 'tokens')
    command <- switch(Sys.info()['sysname'], 'Windows'='where', 'type')
    all(unlist(lapply(progs, system2, command=command, stdout=FALSE)) == 0L)
}

##' Check the afs cache for tokens
afs_yes <- function() !is.null(afs_cache$tokens)

##' Load data.  If can't connect to data, returns and empty data.table.
##' @title Load data
##' @param data name of dataset
load_data <- function(data) {
    if (!afs_yes()) {
        warning("No AFS tokens, can't load data from AFS.")
        return( data.table(x=numeric()) )
    }
    dat <- sync.afs::get_data(data, sync.afs::get_afs(), dkey)
    setnames(dat, names(dat), toupper(names(dat)))
}

##' Parse strings of AFS tokens returned by system call to 'tokens'.
##' @title Parse AFS tokens
##' @param tokens character vector of tokens
##' @return \code{data.table} with token information
afs_parse_tokens <- function(tokens) {
    tokens <- strsplit(tokens, '\\s+|@')
    out <- lapply(tokens, function(x) {
        list(user=sub('([[:alnum:]]+).*', '\\1', x[[2]]),
          cell=x[[6]],
          expires=as.POSIXct(
              paste(c(x[8:9], sub(']', '', x[[10]])), collapse=' '),
              format="%b %d %H:%M"))
    })
    rbindlist(out)
}

##' Query system for tokens
##' @title Retrieve tokens from system
afs_tokens <- function() {
    response <- system2("tokens", stdout=TRUE, stderr=TRUE)
    has_token <- is.character(response) && 
        any((inds <- grepl("tokens for afs@", response)))
    if (has_token) response[inds] else ''
}

##' logout of AFS
afs_logout <- function() system2('unlog')

##' Update the AFS token cache.  This could be either a new set of tokens, an error, or 
##' an initial check for tokens with the system.
##' @title Update AFS cache
##' @param error Optional error message to cache.
##' @return NULL
afs_update_cache <- function(error) {
    token <- afs_tokens()
    if (!missing(error)) {
        afs_cache$error <- error
        if (!nzchar(token)) afs_cache$tokens <- NULL
        return( invisible() )
    }
    afs_cache$error <- NULL  # wipe errors
    if (!nzchar(token)) {
        afs_cache$tokens <- NULL
        return( invisible() )
    }
    afs_cache$tokens <- afs_parse_tokens(token)
    invisible()
}

##' Submit AFS credentials
##' @title Submit AFS creds
##' @param user username
##' @param pwd password
##' @param cell cell
afs_submit <- function(user, pwd, cell='northstar.dartmouth.edu') {
    if (missing(user) || missing(pwd)) return(FALSE)
    res <- system2("klog", 
                args=c("-principal", user, 
                       "-password", pwd,
                       "-cell", cell), 
                stderr=TRUE)
    if (!length(res)) {
        afs_update_cache()
        TRUE
    } else {
        afs_update_cache(error=res)
        FALSE
    }
}

##' Format tokens table for html
##' @title Print tokens table
afs_tokens_table <- function() {
  if (is.null(afs_cache$tokens)) return()
  ## res <- formattable(afs_cache$tokens, list(
  ##   expires = formatter(
  ##     'span',
  ##     style=x ~ style(color = csscolor(gradient(rank(x), 'white', 'red')))
  ##   )
  ## ))
  ## paste(as.character(res))
  as.character(knitr::kable(afs_cache$tokens, format='html', 
                            caption='Current AFS Tokens'))
}
