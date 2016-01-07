### data_to_gdrive.R --- 
## Filename: data_to_gdrive.R
## Description: Upload the master files to google drive
## Author: Noah Peart
## Created: Sun Jan  3 18:37:45 2016 (-0500)
## Last-Updated: Wed Jan  6 17:01:17 2016 (-0500)
##           By: Noah Peart
######################################################################
pkgs <- c("devtools", "dplyr", "haven", "data.table", "stringi")
gitpkgs <- c('nverno'='sync.afs',
             'hadley'='readr',
             'jennybc'='googlesheets',
             'hadley'='xml2')  # 'username'='repo'
check_depends(packages=pkgs, gitpackages=gitpkgs)

## Push data to google drive
dtypes <- c('sas7bdat', 'csv', 'xls', 'xlsx')
files <- sync.afs::data_key[filetype %in% dtypes]

library(googlesheets)
my_sheets <- gs_ls()

## Upload a test: permanent plot data
pp_raw <- sync.afs::get_data('pp_raw', dkey=sync.afs::data_key)
dat <- gs_new("pp", row_extent = 100, col_extent = ncol(pp_raw))
gs_edit_cells(dat, input=head(pp_raw, 100))

## Upload them all: need to figure out how to set sharing permissions
## and load into/create folders on google drive
for (i in 1:nrow(files)) {
  fname <- files[i, rname]
  dat <- sync.afs::get_data(fname, dkey=sync.afs::data_key)
  write.csv(head(dat, 100), 'temp.csv')
  gs_upload('temp.csv', sheet_title=fname)
}
unlink('temp.csv')
