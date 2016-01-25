### ui.R --- 
## Filename: ui.R
## Description: 
## Author: Noah Peart
## Created: Sat Jan 23 14:46:58 2016 (-0500)
## Last-Updated: Mon Jan 25 15:11:30 2016 (-0500)
##           By: Noah Peart
######################################################################
library(shiny)
library(shinydashboard)
uiloc <- 'partials'

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
            source(file.path(uiloc, 'search_ui.R'), local=TRUE)$value,
            source(file.path(uiloc, 'connect_afs_ui.R'), local=TRUE)$value,
            tabItems(
                tabItem('single', source(file.path(uiloc, 'single-var_ui.R'), 
                                         local=TRUE)$value),
                tabItem('tabulate', source(file.path(uiloc, 'tabulate_ui.R'),
                                           local=TRUE)$value)
            )
        )
    )
)

