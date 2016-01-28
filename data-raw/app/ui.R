### ui.R --- 
## Filename: ui.R
## Description: 
## Author: Noah Peart
## Created: Sat Jan 23 14:46:58 2016 (-0500)
## Last-Updated: Wed Jan 27 19:15:54 2016 (-0500)
##           By: Noah Peart
######################################################################
uiloc <- 'partials'

shinyUI(
    dashboardPage(
        dashboardHeader(
            title='Dataset Variables',
            dropdownMenuOutput('menuNotes')
        ),
        dashboardSidebar(
            sidebarSearchForm('srchText', buttonId = 'srchButton',
                              label='Search columns (regex)...'),
            sidebarMenu(
                menuItem('Load Data', tabName='data', icon=icon('database')),
                menuItem('Single Variables', tabName='single', icon=icon('bar-chart')),
                menuItem('Tabulate', tabName='tabulate', icon=icon('th'))
            )
        ),
        dashboardBody(
            flashPoint(),
            singleton(tags$head(tags$script(src='collapse-box.js'))),
            singleton(tags$head(tags$script(src='update-elem.js'))),
            source(file.path(uiloc, 'search_ui.R'), local=TRUE)$value,
            source(file.path(uiloc, 'connect_afs_ui.R'), local=TRUE)$value,
            tabItems(
                tabItem('data', source(file.path(uiloc, 'data_ui.R'),
                                       local=TRUE)$value),
                tabItem('single', source(file.path(uiloc, 'single-var_ui.R'), 
                                         local=TRUE)$value),
                tabItem('tabulate', source(file.path(uiloc, 'tabulate_ui.R'),
                                           local=TRUE)$value)
            ),
            source(file.path(uiloc, 'debug_ui.R'), local=TRUE)$value
        )
    )
)

