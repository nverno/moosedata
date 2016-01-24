### tabulate_ui.R --- 
## Filename: tabulate_ui.R
## Description: UI for tabulate.R
## Author: Noah Peart
## Created: Sat Jan 23 18:14:39 2016 (-0500)
## Last-Updated: Sun Jan 24 00:20:19 2016 (-0500)
##           By: Noah Peart
######################################################################
## prefix: 'tab'

tabChoices <- tagList(
    selectizeInput('cols', 'Columns in table', choices=names(pp_raw), multiple=TRUE)
)
