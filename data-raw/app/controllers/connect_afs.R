### connect_afs.R --- 
## Filename: connect_afs.R
## Description: Connect to AFS
## Author: Noah Peart
## Created: Mon Jan 25 14:48:43 2016 (-0500)
## Last-Updated: Tue Jan 26 01:36:42 2016 (-0500)
##           By: Noah Peart
######################################################################
## Prefix: 'afs'
observeEvent(input$afsSubmit, {
    res <- afs_submit(input$afsUser, input$afsPasswd, input$afsCell)
    if (res) {
        txt <- afs_tokens_table()
        session$sendCustomMessage(
            type='update-elem', 
            message=list(id='afsTokens', text=txt)
        )
    } else {
        session$sendCustomMessage(type='update-elem', 
                                  message=list(id='afsTokens',
                                               text='Login failure'))
    }
})

output$afsResponse <- renderPrint({
    input$afsSubmit
    isolate({
        afs_cache$tokens %||% afs_cache$error %||% ''
    })
})
