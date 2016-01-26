### server.R --- 
## Filename: server.R
## Description: 
## Author: Noah Peart
## Created: Sat Jan 23 14:47:02 2016 (-0500)
## Last-Updated: Mon Jan 25 19:37:33 2016 (-0500)
##           By: Noah Peart
######################################################################
library(shiny)

shinyServer(function(input, output, session) {
    dat <- reactive({ load_data('pp_raw') })
    
    ## output$table <- DT::renderDataTable({
    ##     dat()[, input$cols, with=FALSE]
    ## })
    
    ## Source controllers
    loc <- 'controllers'
    controls <- c('search', 'single-var', 'tabulate', 'connect_afs', 'debug')
    for (i in controls) source(file.path(loc, paste0(i, '.R')), local=TRUE)
})
