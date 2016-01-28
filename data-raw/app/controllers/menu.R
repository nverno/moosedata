### menu.R --- 
## Filename: menu.R
## Description: 
## Author: Noah Peart
## Created: Wed Jan 27 15:17:09 2016 (-0500)
## Last-Updated: Wed Jan 27 23:02:46 2016 (-0500)
##           By: Noah Peart
######################################################################
## Prefix: 'menu'

## modal won't respone to dynamic button in shinyBS
observeEvent(input$afsBtn, toggleModal(session, 'afs'))

## Notifications: 
## Update when AFS creds are submitted/logout
output$menuNotes <- renderMenu({
    input$afsSubmit
    input$afsLogout
    notes <- vector('list', 2L)  # system utils, token status

    notes[[1]] <- {
        if (has_afs_utils) {
            tags$li(
                icon('success'),
                actionButton('afsBtn', 'Connect to AFS', width='100%', 
                             style='color:green;')
            )
        } else {
            notificationItem(
                text=HTML("<span style=color:red;>Can't Connect to AFS.</span>"),
                icon=icon('exclamation-triangle'),
                status='danger')
        }
    }
    
    has_tokens <- afs_yes()
    if (has_tokens) {
        txt <- sprintf('AFS tokens for %s.', 
                       toString(afs_cache$tokens[,user]))
        status <- 'success'
    } else {
        txt <- 'No AFS tokens.'
        status <- 'danger'
    } 

    notes[[2]] <- notificationItem(
        text=txt, 
        icon=icon('exclamation-triangle'),
        status=status
    )
    
    dropdownMenu(
        icon=icon('sign-in'),
        badgeStatus=if (has_tokens) 'success' else 'danger',
        type='notifications',
        .list=notes
    )
})
