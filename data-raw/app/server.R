### server.R --- 
## Filename: server.R
## Description: 
## Author: Noah Peart
## Created: Sat Jan 23 14:47:02 2016 (-0500)
## Last-Updated: Thu Jan 28 01:06:38 2016 (-0500)
##           By: Noah Peart
######################################################################
library(shiny)

shinyServer(function(input, output, session) {

    ## Source controllers
    loc <- 'controllers'
    controls <- c(
        'menu',                           # dropdown menu
        'search',                         # search controls
        'data',                           # data importing
        'single-var',                     # examine single variables
        'tabulate',  
        'connect_afs',                    # connecting with AFS
        'debug'                           # add a debugging panel
    )
    for (i in controls) source(file.path(loc, paste0(i, '.R')), local=TRUE)
})
