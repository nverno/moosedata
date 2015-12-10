##' @include utils.R
NULL

##' @title Update data if it has been changed on AFS
##' @importFrom sync.afs file_info process_tracker get_afs
##' @param compress_type Compression type to compress archives (default bzip2)
##' @param basedir Directory with raw data files (defaul 'data-raw')
##' @param rawfiles names of data directories to archive and compress
##' @param oldfile name of previous compressed archive
##' @import data.table
##' @export
update_data <- function(compress_type='bzip2',
                        basedir='data-raw', rawfiles=c('raw', 'afs'='afs'),
                        oldfile=file.path(basedir, paste('rawdata.tar', compress_type, sep="."))) {
    ## Decompress the compressed archive of raw data files
    decomp_raw()

    ## Get modification dates from AFS
    dat <- sync.afs::process_tracker()
    finfo <- sync.afs::file_info(files=dat$files)
    data.table::setkeyv(finfo, c("doc"))

    ## Modification dates from compressed archive
    pth <- file.path(basedir, rawfiles['afs'])
    finfo2 <- sync.afs::file_info(path=pth, files=list.files(pth))
    data.table::setkeyv(finfo2, c("doc"))

    ## Ignore files that are in 'afs' archive (like 'README.txt', etc)
    finfo2 <- finfo2[finfo2$doc %in% finfo$doc, ]

    ## Were any modified?
    inds <- finfo[["modified"]] > finfo2[["modified"]]
    if (any(inds)) {
        ## Remove the old compressed archive
        unlink(oldfile)
        
        print(sprintf("Updating %s", paste(finfo[inds, .(doc)], sep=",")))
        for (ii in inds) {
            res <- file.copy(from=do.call("file.path",
                                          c(sync.afs::get_afs(), finfo[inds, .(directory, doc)])),
                             to=do.call("file.path", c(pth, finfo[inds, .(doc)])),
                             overwrite = TRUE)
            if (!all(res)) stop("error some files weren't copied.")
        }
        ## Cleanup: this compresses the raw files and removes the raw versions
        comp_raw(rawfiles, compress_type)
    } else {  # no files were modified, so just erase the rawfiles
        unlink(file.path(basedir, rawfiles), recursive=TRUE, force=TRUE)
    }
}
