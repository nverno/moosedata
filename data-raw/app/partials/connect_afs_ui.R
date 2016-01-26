### connect_afs_ui.R --- 
## Filename: connect_afs_ui.R
## Description: 
## Author: Noah Peart
## Created: Mon Jan 25 15:06:04 2016 (-0500)
## Last-Updated: Tue Jan 26 00:00:40 2016 (-0500)
##           By: Noah Peart
######################################################################
## Prefix: 'afs'

## Modal triggered by button input$afsBtn
afsUI <- tagList(
    bsModal('afs', 'AFS Connection', trigger='afsBtn',
            tags$div(id='afsTokens', 'No current AFS tokens.'),
            tags$h2('Add AFS token'),
            textInput('afsUser', 'Username:', value=''),
            textInput('afsPasswd', 'Password:', value=''),
            textInput('afsCell', 'Cell:', value='northstar.dartmouth.edu',
                      placeholder = 'northstar.dartmouth.edu'),
            fluidRow(
                column(width=3, offset=1, actionButton('afsSubmit', 'Submit')),
                column(width=8, tags$span(id='afsResponse', ''))
            ))
            ## verbatimTextOutput('afsResponse'))
)
