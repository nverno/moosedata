### single-var_ui.R --- 
## Filename: single-var_ui.R
## Description: 
## Author: Noah Peart
## Created: Sat Jan 23 18:36:35 2016 (-0500)
## Last-Updated: Wed Jan 27 23:32:46 2016 (-0500)
##           By: Noah Peart
######################################################################
## Prefix: 'single'
## defaults: 'plotPar$inputs', 'plotPar$outputs'

## Select Data
singleData <- tagList(
    box(title='Data', collapsible=TRUE, width=NULL,
        selectInput('singleData', 'Data', choices='None'))
)

## Distribution controls
singleDistrControls <-         
        box(title='Input', 
            background='black',
            width=NULL,
            selectInput('singleDistrVar', 'Variable', choices='None'),
            checkboxInput('singleShowBins', 'Adjust bins', value=FALSE),
            conditionalPanel(
                condition= "input.singleShowBins == true",
                sliderInput('singleBins', 'Approx. number of bins:', 
                            value=30, min=0, max=100)))

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


