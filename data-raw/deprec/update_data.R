### update_data.R --- 
## Filename: update_data.R
## Description: Update data to most recent versions on AFS
## Author: Noah Peart
## Created: Sat Nov 28 19:55:40 2015 (-0500)
## Last-Updated: Sun Nov 29 13:46:48 2015 (-0500)
##           By: Noah Peart
######################################################################
stopifnot(require(sync.afs))
source('R/utils.R')
library(dplyr)  # possible improvements on read_sas
library(haven)  # read_sas
library(data.table)

rawfiles <- c('raw', 'afs'='afs')
basedir <- 'data-raw'
compress_type <- 'bzip2'

## Decompress the compressed archive of raw data files
decomp_raw()

## Get modification dates from AFS
dat <- sync.afs::process_tracker()
finfo <- sync.afs::file_info(files=dat$files)
setkeyv(finfo, c("doc"))

## Modification dates from compressed archive
pth <- file.path(basedir, rawfiles['afs'])
finfo2 <- sync.afs::file_info(path=pth, files=list.files(pth))
setkeyv(finfo2, c("doc"))

## Ignore files that are in 'afs' archive (like 'README.txt', etc)
finfo2 <- finfo2[finfo2$doc %in% finfo$doc, ]

## Were any modified?
inds <- finfo[["modified"]] > finfo2[["modified"]]
if (any(inds)) {
  for (ii in inds) {
    res <- file.copy(from=do.call("file.path", c(get_afs(), finfo[inds, .(directory, doc)])),
              to=do.call("file.path", c(pth, finfo[inds, .(doc)])),
              overwrite = TRUE)
    if (!all(res) stop("error some files weren't copied."))
    }
}

## Cleanup: this compresses the raw files and removes the raw versions
comp_raw(rawfiles, compress_type)

    
  
