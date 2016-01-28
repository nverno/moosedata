### connect_afs_ui.R --- 
## Filename: connect_afs_ui.R
## Description: 
## Author: Noah Peart
## Created: Mon Jan 25 15:06:04 2016 (-0500)
## Last-Updated: Wed Jan 27 23:12:27 2016 (-0500)
##           By: Noah Peart
######################################################################
## Prefix: 'afs'

## Modal triggered by button input$afsBtn
afsUI <- tagList(
    bsModal('afs', 'Get AFS tokens', trigger='afsBtn', size='small',
            textInput('afsUser', 'Username:', value=''),
            passwordInput('afsPasswd', 'Password:', value=''),
            textInput('afsCell', 'Cell:', value='northstar.dartmouth.edu',
                      placeholder = 'northstar.dartmouth.edu'),
            column(width=12, offset=2, 
                   actionButton('afsSubmit', 'Submit'),
                   actionButton('afsLogout', 'Logout')))
)
