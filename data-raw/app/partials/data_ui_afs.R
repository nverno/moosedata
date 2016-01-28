### data_ui_afs.R --- 
## Filename: data_ui_afs.R
## Description: UI for loading AFS data
## Author: Noah Peart
## Created: Thu Jan 28 01:08:30 2016 (-0500)
## Last-Updated: Thu Jan 28 01:21:36 2016 (-0500)
##           By: Noah Peart
######################################################################
## Prefix: 'datAfs'

## If connected to AFS
rnames <- sync.afs::data_key[,rname]

## Box with controls input for AFS queries
datAfsInputBox <- box(width=NULL,
                   helpText('Data can be selected by clicking rows in the AFS data table below.  The "All data" option will upload all of the master files from AFS.'),
                   radioButtons(
                       'datAfsGetOpt', label='AFS Options:', 
                       choices=c('Selected rows'='rows',  # get selected rows from DT
                                 'By name'='name',        # name of data file
                                 'All data'='all')        # all master files
                     , inline=TRUE),
                   conditionalPanel(
                       condition="input.datAfsGetOpt == 'name'",
                       textInput('datAfsGetName', 'Enter filename:', value='',
                                 placeholder='R name or master file name')
                   ))

## Summary of available/loaded tables
datAfsInfo <- tagList(
    fluidRow(
        tabBox(id='datTabs', title='Data', width=12,
               tabPanel(
                   title='AFS data',
                   box(width=NULL,
                       DT::dataTableOutput('datAfsTable'))),
               tabPanel(
                   title='Loaded', 
                   box(width=NULL,
                       DT::dataTableOutput('datAfsLoaded'))))
    )
)

## Return
list(datAfsInputBox=datAfsInputBox, datAfsInfo=datAfsInfo)
