### single-var_ui.R --- 
## Filename: single-var_ui.R
## Description: ggplot2 UI for single variable distributions
## Author: Noah Peart
## Created: Mon Jan 25 16:39:57 2016 (-0500)
## Last-Updated: Mon Jan 25 18:03:35 2016 (-0500)
##           By: Noah Peart
######################################################################
## Prefix: 'single'
## @param pars$single$plot_output: either plotOutput or plotlyOutput depending on style

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
                    pars$single$plot_output('singleHist'))
            ),
            
            ## Density
            tabPanel(
                id = 'dens',
                title='Density',
                box(width='100%',
                    background='blue',
                    pars$single$plot_output('singleDens'))
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
