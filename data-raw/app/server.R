### server.R --- 
## Filename: server.R
## Description: 
## Author: Noah Peart
## Created: Sat Jan 23 14:47:02 2016 (-0500)
## Last-Updated: Sat Jan 23 18:56:53 2016 (-0500)
##           By: Noah Peart
######################################################################
library(shiny)

shinyServer(function(input, output, session) {
    dat <- reactive({ pp_raw })
    
    output$table <- DT::renderDataTable({
        dat()[, input$cols, with=FALSE]
    })
    
    ## Source controllers
    source('search.R', local=TRUE)$value
    source('single-var.R', local=TRUE)$value
    source('tabulate.R', local=TRUE)$value
})
