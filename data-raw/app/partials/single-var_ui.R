### single-var_ui.R --- 
## Filename: single-var_ui.R
## Description: 
## Author: Noah Peart
## Created: Sat Jan 23 18:36:35 2016 (-0500)
## Last-Updated: Mon Jan 25 17:57:42 2016 (-0500)
##           By: Noah Peart
######################################################################
## Prefix: 'single'
## defaults: 'plotPar$inputs', 'plotPar$outputs'

## Get distributions: should source a taglist 'singleDistributions'
style <- if (pars$single$style == 'plotly') 'ggplot2' else pars$single$style
source(file.path(sources$uis, style, 'single-var_ui.R'), local=TRUE)$value

## Summaries of variables
singleSummaries <- tagList(
    column(width=12,
           tabBox(
               width=NULL,
               id='singleSummary',
               title='Descriptive Stats',
               
               ## Quantiles
               tabPanel(
                   title='Quantiles/Unique Values',
                   box(width=NULL,
                       tableOutput('singleQuantiles'))
               ),

               ## Fivepoint
               tabPanel(
                   title='Five Point',
                   box(width=NULL,
                       tableOutput('singleFivePoint'))
               )
           ))
)

## Output this
tagList(
    singleDistributions,
    singleSummaries
)


