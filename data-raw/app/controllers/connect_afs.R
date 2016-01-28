### connect_afs.R --- 
## Filename: connect_afs.R
## Description: Connect to AFS
## Author: Noah Peart
## Created: Mon Jan 25 14:48:43 2016 (-0500)
## Last-Updated: Wed Jan 27 23:14:13 2016 (-0500)
##           By: Noah Peart
######################################################################
## Prefix: 'afs'

## This needs higher priority than other afsSubmit observers
## since they may rely on afs_cache which gets updated here.
observeEvent(input$afsSubmit, {
    res <- afs_submit(input$afsUser, input$afsPasswd, input$afsCell)
    if (res) {
        flash(session, text=sprintf('<b>Successfully signed in as %s</b>', 
                                    input$afsUser), type='success')
        toggleModal(session, 'afs')
    } else {
        err <- sprintf('Error: %s', as.vector(afs_cache$error))
        flash(session, text=err, type='danger', duration=5)
    }
}, priority = 10)

observeEvent(input$afsLogout, {
    users <- if (!is.null(afs_cache$tokens)) {
                 afs_cache$tokens[, user]
             } else NULL
    if (is.null(users)) {
        flash(session, 'No current AFS tokens.', type='warning')
    } else {
        res <- afs_logout()
        if (res) {        
            flash(session, sprintf("Successfully signed out as %s",
                                   toString(users)), type='success')
        } else {
            flash(session, sprintf('Failed to sign out as %s', 
                                   toString(users), type='danger'))
        }
    }
}, priority = 10)
