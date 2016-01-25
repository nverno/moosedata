### copy_data.R --- 
## Filename: copy_data.R
## Description: Copy data from AFS to directory
## Author: Noah Peart
## Created: Wed Jan  6 20:10:56 2016 (-0500)
## Last-Updated: Mon Jan 25 03:18:14 2016 (-0500)
##           By: Noah Peart
######################################################################
source('data-raw/R/check_depends.R')
pkgs <- c('data.table', 'haven', 'dplyr', 'readxl')
gitpkgs <- c('nverno'='sync.afs')
check_depends(pkgs, gitpkgs)

## Copy files to 'temp'
dir.create('temp')
sync.afs::copy_files(ext='docx', outdir='temp/docs')
dats <- sync.afs::data_key[!(filetype %in% c('docx')), filetype]
sync.afs::copy_files(ext=dats, outdir='temp/data')

## save/add documentation
source('~/work/test/utils/roxy.R')  # roxy_itemize
ignore <- c('pp_raw', 'tp_raw', 'pp_demslope', 'abba15ex')

files <- sync.afs::data_key[!(rname %in% ignore) & !(filetype %in% 'docx'), filename]
fpaths <- file.path('temp', 'data', files)
rnames <- sync.afs::data_key[filename %in% files, rname]

for (i in seq_along(rnames)) {
    dat <- rio::import(fpaths[i], column.labels=TRUE)
    dat <- as.data.table(dat)
    rawname <- paste(rnames[i], "raw", sep="_")
    assign(rawname , dat)
    save(list=rawname, file=paste0(file.path('data', rawname), '.rda'))
    do.call("roxy_itemize", list(data=as.name(rawname), 
                                 outfile=file.path('R', paste0(rawname, '.R')),
                                 add_tables=TRUE))
}
