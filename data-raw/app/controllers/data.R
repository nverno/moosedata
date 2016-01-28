### data.R --- 
## Filename: data.R
## Description: Import data
## Author: Noah Peart
## Created: Wed Jan 27 18:47:31 2016 (-0500)
## Last-Updated: Thu Jan 28 00:43:44 2016 (-0500)
##           By: Noah Peart
######################################################################
## Prefix: 'dat'
## react to input$datGet
datOpts <- new.env()
datOpts$blank <- data.table(x=numeric())
datOpts$types <- c('csv', 'sas7bdat', 'rda', 'rds', 'txt', 'xls', 'xlsx')
datOpts$dts <- sync.afs::data_key[filetype %in% datOpts$types, 
                                  .(rname, filename)][, loaded:=FALSE][]

## Reactives
allDat <- reactiveValues(  
    data=new.env(),  # all loaded datasets
    afs=new.env(),   # AFS info
    local=new.env()  # local
)

dat <- reactive({
    if (is.null(allDat) || is.null(allDat$afs) || !length(allDat$afs)) {
        datOpts$blank
    } else {
        allDat$afs[[1]]
    }
})

## Set current single variable data in dat()

## Load data
## This observer gets highest priority in case others
## depend on datOpts/allDat
observeEvent(input$datGet, {
    if (input$datGetTabs == 'AFS' && !afs_yes()) {
        if (!has_afs_utils) {
            flash(session, "Can't access AFS, missing system utilities: klog, tokens",
                  type='danger')
            Sys.sleep(2)
        } else {
            flash(session, 'Must login to AFS to access these files.', type='danger')
            toggleModal(session, 'afs')
            return()
        }
    }
    type <- input$datAfsGetOpt
    n <- if (type == 'name') input$datAfsGetName else FALSE
    ns <- switch(type, 
                 'rows'=datOpts$dts[input$datAfsTable_rows_selected, rname],
                 'all'=datOpts$dts[, rname],
                 'name'=datOpts$dts[n == rname | n == filename, rname],
                 FALSE)
    if (identical(ns, FALSE)) return()
    
    ## Errors/warnings
    if (is.character(ns) && !length(ns)) {
        flash(session, 
              sprintf("%s doesn't match any R filenames or master file names.", n),
              type='danger')
        return()
    } else if (inherits(ns, 'data.table') && !nrow(ns)) {
        flash(session, "No rows were selected", type='danger')
        return()
    } else if (any((inds <- ns %in% names(allDat$afs)))) {
        flash(session, sprintf("%s alread loaded... skipping",
                               toString(ns[inds])))
        ns <- ns[!inds]
        if (!length(inds)) return()
    } else if (!is.character(ns)) {
        flash(session, 'Unkown error: not a character vector',
              type='alert')
        return()
    }
    
    ## Load files:
    ## Normalizing so all column names are capitalized
    print(sprintf('getting %s', toString(ns)))
    for (f in ns) allDat$afs[[f]] <- {
        dt <- sync.afs::get_data(f)
        setnames(dt, names(dt), toupper(names(dt)))
    }
    datOpts$dts[rname %in% ns, loaded := TRUE]
}, priority=10)

## If AFS connected
output$datAfsTable <- DT::renderDataTable({
    input$datGet  # update when data gets loaded
    datOpts$dts
}, class='cell-border stripe hover', colnames=c('ID', 'R file', 'Master file', 'Loaded'),
caption=htmltools::tags$caption(
    style='caption-side: bottom; text-align: center;',
    'Table: Files available from AFS.'))

output$datAfsLoaded <- DT::renderDataTable({
    input$datGet
    if (is.null(allDat$afs) || !length(allDat$afs)) {
        setNames(data.frame(x=character(), y=character()),
                 c('R file', 'Master file'))
    } else {
        DT::datatable(
            data.table::tables(env=allDat$afs),
            options=list(scrollX=TRUE),
            caption='Table: Information about loaded tables.')
    }
})

