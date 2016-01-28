### data_ui.R --- 
## Filename: data_ui.R
## Description: UI for import data
## Author: Noah Peart
## Created: Wed Jan 27 18:47:51 2016 (-0500)
## Last-Updated: Thu Jan 28 02:08:28 2016 (-0500)
##           By: Noah Peart
######################################################################
## Prefix: 'dat'

## use_afs <- FALSE
if (use_afs) 
    afs <- source(file.path(sources$uis, 'data_ui_afs.R'), local=TRUE)$value

## *** Currently only dealing with loading master files from AFS ***
## TODO: 
## - support R library containing master files
## - upload locally
datGet <- tagList(
    fluidRow(
        tabBox(id='datGetTabs', title='Import Data', width=9,
               if (use_afs) {
                   tabPanel(
                       title='AFS',
                       afs$datAfsInputBox
                   )
               } else tagList(),
               tabPanel(
                   title='Upload',
                   box(width=NULL, 'Load another file (not implemented).')
               )),
        column(width=3,
               actionButton('datGet', 'Submit',
                   style='background-color:white;color:green;font-weight:bold;border-color:black;', icon=icon('send')))
    )
)

## Return when sourced
tagList(
    datGet,
    if (use_afs) datAfsInfo else list()
)
