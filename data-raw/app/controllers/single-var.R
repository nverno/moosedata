### single-var.R --- 
## Filename: single-var.R
## Description: Summarise single variables
## Author: Noah Peart
## Created: Sat Jan 23 18:24:27 2016 (-0500)
## Last-Updated: Wed Jan 27 23:47:21 2016 (-0500)
##           By: Noah Peart
######################################################################
## Prefix: 'single'
singleDat <- eventReactive(input$singleDistrVar, {
    if (is.null(input$singleDistrVar) ||
        input$singleDistrVar == 'None') return ( data.table(None=numeric(1)) )
    isolate(dat()[, input$singleDistrVar, with=FALSE])
})

singleName <- eventReactive(input$singleDistrVar, {
    input$singleDistrVar
})

################################################################################
##
##                                 Observers
##
################################################################################
## Update the variable choice when data changes
## observeEvent(input$datGet, {
##     if (is.null(allDat$afs)) return()
##     updateSelectInput(session, inputId = 'singleData', 
##                       choices=names(allDat$afs))
## })

## observeEvent(input$singleData, {
##     if (input$singleData == 'None') return()
##     updateSelectInput(session, inputId = 'singleDistrVar',
##                       choices=names(allDat$afs[[input$singleData]]))
## })

observeEvent(dat(), {
    updateSelectInput(session, inputId = 'singleDistrVar',
                      choices=names(dat()))
}, ignoreNULL = FALSE)

################################################################################
##
##                                 Graphics
##
################################################################################
## Choose which styles to source in global.R
source(file.path(sources$controls, pars$single$style, 'single-var.R'), local=TRUE)

################################################################################
##
##                                 Summaries
##
################################################################################
output$singleFivePoint <- renderTable({
    singleName()                # only respond to change in variable
    isolate({
        dt <- singleDat()  # don't need to re-render graphics
        if (!is.numeric(dt[[1]]))
            return( data.frame('Not numeric variable.') )
        setNames(data.frame(as.list(fivenum(dt[[1]]))),
                 c('Min.', 'Lower-Hinge', 'Median', 'Upper-Hinge', 'Max.'))
    })
})

output$singleQuantiles <- renderTable({
    singleName()
    isolate({
        v <- singleDat()[[1]]
        if (!is.numeric(v)) {
            res <- if (is.factor(v)) {
                       data.table(levels=levels(v))
                   } else {
                       if (length(unique(v)) < 50) {
                           data.table(Values=unique(v))
                       } else {
                           data.table(Number_values=length(unique(v)))
                       }
                   }
            return ( res )
        }
        res <- quantile(v, na.rm=TRUE)
        setNames(data.frame(as.list(res)), names(res))
    })
})
