### ui.R --- 
## Filename: ui.R
## Description: 
## Author: Noah Peart
## Created: Sat Jan 23 14:46:58 2016 (-0500)
## Last-Updated: Sun Jan 24 00:29:43 2016 (-0500)
##           By: Noah Peart
######################################################################
library(shiny)
library(shinydashboard)

shinyUI(
    dashboardPage(
        dashboardHeader(title='Dataset Variables'),
        dashboardSidebar(
            sidebarSearchForm('srchText', buttonId = 'srchButton',
                              label='Search columns (regex)...'),
            sidebarMenu(
                menuItem('Single Variables', tabName='single', icon=icon('dashboard')),
                menuItem('Tabulate', tabName='tabulate', icon=icon('th'))
            )
        ),
        dashboardBody(
            singleton(tags$head(tags$script(src='collapse-box.js'))),
            source('search_ui.R', local=TRUE)$value,
            tabItems(
                tabItem('single', source('single-var_ui.R', local=TRUE)$value),
                tabItem('tabulate', source('tabulate_ui.R', local=TRUE)$value)
            )
        )
    )
)

