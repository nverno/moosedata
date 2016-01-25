### single-var.R --- 
## Filename: single-var.R
## Description: ploty controls for single variable
## Author: Noah Peart
## Created: Mon Jan 25 16:24:14 2016 (-0500)
## Last-Updated: Mon Jan 25 17:51:35 2016 (-0500)
##           By: Noah Peart
######################################################################
## Prefix: 'single'
## reactives: 'singleDat()', 'singleName()'

################################################################################
##
##                               Distributions
##
################################################################################
## Histogram
## inputs: 'singleShowBins', 'singleBins'
output$singleHist <- renderPlotly({
    if (singleName() == 'None') return ()
    p <- ggplot(singleDat(), aes_string(singleName())) + ggdefaults
    
    ## Use 'stat_bin' as default for numerics, 'stat_count' for non-numerics
    stat <- if (is.numeric(singleDat()[[1]])) 'bin' else 'count'
    
    if (input$singleShowBins && stat == 'bin')
        p <- p + geom_histogram(bins=input$singleBins, na.rm=TRUE)
    else 
        p <- p + geom_bar(stat=stat, na.rm=TRUE)
    p
})

output$singleDens <- renderPlotly({
  ## Plotly doesn't want to try to render this
  if (!is.numeric(singleDat()[[1]])) {
    p <- graph_fail
  } else {
    p <- ggplot(singleDat(), aes_string(singleName())) + 
      geom_density(fill='pink', alpha=0.5, na.rm=TRUE) +
      ggdefaults
  }
  p
})
