### vis.R --- 
## Filename: vis.R
## Description: 
## Author: Noah Peart
## Created: Sat Jan 23 14:39:28 2016 (-0500)
## Last-Updated: Sun Jan 24 00:10:35 2016 (-0500)
##           By: Noah Peart
######################################################################
library(shiny)
library(shinydashboard)

ui <- 
    shinyUI(
    dashboardPage(
        dashboardHeader('CSAP'),
        dashboardSidebar(
            sidebarMenu(
                menuItem("Dashboard", tabName='dashboard', icon=icon('dashboard')),
                menuItem('')
            )
        ),
        dashboardBody(
            fluidRow(
                
            )
        )
    )
)


server <- shinyServer(function(input, output, session){
    
})


runApp(ui, server)
