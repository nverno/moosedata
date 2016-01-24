### single-var_ui.R --- 
## Filename: single-var_ui.R
## Description: 
## Author: Noah Peart
## Created: Sat Jan 23 18:36:35 2016 (-0500)
## Last-Updated: Sun Jan 24 00:26:58 2016 (-0500)
##           By: Noah Peart
######################################################################
## Prefix: 'single'
## defaults
inp <- plotPar$inputs
out <- plotPar$outputs

## Basic distributions for single variables
singleDistributions <- tagList(
    fluidRow(
        ## Distributions tab box
        tabBox(
            width=9,
            backround='blue',
            title='Distribution',
            id = 'singleDistr',
            
            ## Histogram
            tabPanel(
                id='hist',
                title='Histogram',
                box(width='100%',
                    background='blue',
                    plotOutput('singleHist'))
            ),
            
            ## Density
            tabPanel(
                id = 'dens',
                title='Density',
                box(width='100%',
                    background='blue',
                    plotOutput('singleDens'))
            )
        ),
        
        ## Distribution controls
        box(title='Input', 
            background='black',
            width=3,
            selectInput('singleDistrVar', 'Variable', choices='None'),
            checkboxInput('singleShowBins', 'Adjust bins', value=FALSE),
            conditionalPanel(
                condition= "input.singleShowBins == true",
                sliderInput('singleBins', 'Approx. number of bins:', 
                            value=30, min=0, max=100)
            ))
    )
)

## Summaries of variables
singleSummaries <- tagList(
    fluidRow(
        tabBox(
            id='singleSummary',
            title='Descriptive Stats',
            width=9,
            
            ## Quantiles
            tabPanel(
                title='Quantiles/Unique Values',
                box(tableOutput('singleQuantiles'), width='100%')
            ),

            ## Fivepoint
            tabPanel(
                title='Five Point',
                box(tableOutput('singleFivePoint'), width='100%')
            )
        )
    )
)

tagList(
    fluidPage(
        singleDistributions,
        singleSummaries
    )
)


