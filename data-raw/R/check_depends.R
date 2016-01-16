### check_depends.R --- 
## Filename: check_depends.R
## Description: Check that the required packages are available to remake data.
## Author: Noah Peart
## Created: Wed Dec 30 18:10:34 2015 (-0500)
## Last-Updated: Fri Jan 15 22:22:08 2016 (-0500)
##           By: Noah Peart
######################################################################

##' Check dependencies and ask for input to install if interactive,
##' otherwise install if auto_install is TRUE (default).
##' @title Check dependencies
##' @param packages Packages available through install.packages
##' @param gitpackages Packages on github
##' @param auto_install If not interactive, logical to install packages (default to TRUE).
##' @param load Load the packages (default FALSE)
##' @import devtools
##' @return TRUE invisibly
check_depends <- function(packages, gitpackages, auto_install=TRUE, load=FALSE) {
  pkgs <- if (missing(packages)) list() else packages
  gitpkgs <- if (missing(gitpackages)) NULL else gitpackages
  found_pkgs <- unlist(lapply(pkgs, requireNamespace, quietly=TRUE))
  found_git <- unlist(lapply(gitpkgs, requireNamespace, quietly=TRUE), use.names = FALSE)

  if (!all((found <- c(found_pkgs, found_git)))) {
    pkgnames <- setNames(
      c(pkgs, paste(names(gitpkgs), unname(gitpkgs), sep="/")),
      c(rep(c('', '(github)'), times=c(length(pkgs), length(gitpkgs))))
    )

    ## Print missing packages and prompt for install
    missed <- pkgnames[!found]
    mess <- sprintf(
      'The following packages are required to remake the data but are missing:\n\t%s\n',
      paste(paste(missed, names(missed)),
            collapse="\n\t"))
    cat(mess)

    if (interactive()) {
      while(TRUE) {
        n <- readline(prompt='Install missing packages[y/n]: ')
        if (n %in% c('y', 'Y')) {
          if (any((inds <- !nzchar(names(missed))))) {
            install.packages(missed[inds], repos='http://cran.rstudio.com/')
          }
          if (any(!inds)) {
            devtools::install_github(missed[!inds])
          }
          break
        } else if (n %in% c('n', 'N')) {
          stop('Can\'t continue without required packages.')
        } else {
          cat('\nInput not understood\n')
        }
      }
    } else if (auto_install) {
      if (any((inds <- !nzchar(names(missed))))) {
        install.packages(missed[inds], repos='http://cran.rstudio.com/')
      }
      if (any(!inds)) {
        devtools::install_github(missed[!inds])
      }
    } else {
      stop('Can\'t continue without required packages.')
    }
  }
  if (load) lapply(c(pkgs, unname(gitpkgs)), require, quietly=TRUE, character.only=TRUE)
  invisible(TRUE)
}


