### single-var.R --- 
## Filename: single-var.R
## Description: Summarise single variables
## Author: Noah Peart
## Created: Sat Jan 23 18:24:27 2016 (-0500)
## Last-Updated: Sat Jan 23 23:47:18 2016 (-0500)
##           By: Noah Peart
######################################################################
## Prefix: 'single'
singleDat <- eventReactive(input$singleDistrVar, {
    if (is.null(input$singleDistrVar) ||
        input$singleDistrVar == 'None') return ( data.table(None=numeric(1)) )
    isolate(dat()[, input$singleDistrVar, with=FALSE])
})

################################################################################
##
##                                 Observers
##
################################################################################
## Update the variable choice when data changes
observeEvent(dat(), {
    updateSelectInput(session, inputId = 'singleDistrVar',
                      choices=names(dat()))
}, ignoreNULL = FALSE)

################################################################################
##
##                               Distributions
##
################################################################################
output$singleHist <- renderPlot({
    if (input$singleDistrVar == 'None') return ()
    p <- ggplot(singleDat(), aes_string(input$singleDistrVar)) + ggdefaults
    
    ## Use 'stat_bin' as default for numerics, 'stat_count' for non-numerics
    stat <- if (dat()[, is.numeric(get(input$singleDistrVar))]) 'bin' else 'count'
    
    if (input$singleShowBins && stat == 'bin')
        p <- p + geom_histogram(bins=input$singleBins, na.rm=TRUE)
    else 
        p <- p + geom_bar(stat=stat, na.rm=TRUE)
    p
})

output$singleDens <- renderPlot({
    p <- ggplot(singleDat(), aes_string(input$singleDistrVar)) + 
        geom_density(fill='pink', alpha=0.5, na.rm=TRUE) +
        ggdefaults
    p
})

################################################################################
##
##                                 Summaries
##
################################################################################
output$singleFivePoint <- renderTable({
    if (!is.numeric(singleDat()[[1]])) 
        return( data.frame('Not numeric variable.') )
    setNames(data.frame(as.list(fivenum(singleDat()[[1]]))),
             c('Min.', 'Lower-Hinge', 'Median', 'Upper-Hinge', 'Max.'))
})

output$singleQuantiles <- renderTable({
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
    res <- quantile(singleDat()[[1]], na.rm=TRUE)
    setNames(data.frame(as.list(res)), names(res))
})
