### copy_data.R --- 
## Filename: copy_data.R
## Description: Copy data from AFS to directory
## Author: Noah Peart
## Created: Wed Jan  6 20:10:56 2016 (-0500)
## Last-Updated: Thu Jan  7 12:24:21 2016 (-0500)
##           By: Noah Peart
######################################################################
source('data-raw/R/check_depends.R')
pkgs <- c('data.table', 'haven', 'dplyr', 'readxl')
gitpkgs <- c('nverno'='sync.afs')
check_depends(pkgs, gitpkgs)

##' Copy files from AFS given file extensions.
##' @title Copy files from AFS 
##' @param ext File extensions (character vector)
##' @param outdir Name of directory to copy files to
##' @param ... Passed to \code{file.copy}
##' @return TRUE if all files copied successfully.
copy_data <- function(ext, outdir='temp', ...) {
    sync.afs::check_afs()
    filetype <- afs_path <- NULL
    filepaths <- sync.afs::data_key[filetype %in% ext, afs_path]
    dir.create(outdir)
    res <- file.copy(from = file.path(sync.afs::get_afs(), filepaths),
                     to = outdir, ...)
    if (!(any(res))) {
        warning(sprintf("Failed to copy %s", paste(basename(filepaths), collapse=",")))
        return( FALSE )
    }
    TRUE
}
