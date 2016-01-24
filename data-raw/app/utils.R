### utils.R --- 
## Filename: utils.R
## Description: 
## Author: Noah Peart
## Created: Sat Jan 23 20:37:49 2016 (-0500)
## Last-Updated: Sat Jan 23 20:38:10 2016 (-0500)
##           By: Noah Peart
######################################################################
"%||%" <- function(a, b) if (is.null(a)) b else a
