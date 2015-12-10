##' @title Archive/compress raw data files
##' @details
##'  \describe{
##'    7-zip supports pretty much all the types: http://www.7-zip.org/
##'    After compression, the raw files/temporary archive are removed
##' }
##' @param rawfiles The raw data files to be archived and compressed.
##' @param compress_type Compression type {xz, bzip, bzip2, etc}
##' @param basedir Name of the raw data directory (default 'data-raw')
##' @param outname Basename of output compressed archive (default 'rawdata')
##' @param program Path to 7-zip program (7z.exe) on windows (default assumes in path)
comp_raw <- function(rawfiles, compress_type, basedir = 'data-raw', outname='rawdata',
                     program='7z') {
    rawfiles <- file.path(basedir, rawfiles)
    tarfile <- file.path(basedir, paste(outname, 'tar', sep='.'))
    compfile <- paste(tarfile, compress_type, sep='.')

    ## Use 7-zip on windows
    if (Sys.info()[['sysname']] == 'Windows') {
        prog <- program                                                 # using 7-zip
        args <- c('a', '-ttar', tarfile, rawfiles)                      # tar the raw files
        res <- system2(prog, args=args)
        if (res)
            stop('Need to specify path to 7-zip (7z.exe) or download from "http://www.7-zip.org/"')
        args <- c('a', paste0('-t', compress_type), compfile, tarfile)  # compress
        system2(prog, args)
        unlink(c(rawfiles, tarfile), recursive = TRUE, force=TRUE)
    } else {
        tar(tarfile=compfile, files=rawfiles, compression=compress_type)
        unlink(c(rawfiles, tarfile), recursive = TRUE, force=TRUE)
    }
}

##' @title Decompress/Unarchive rawdata files
##' @details
##' \describe{
##'   Some trouble with compression/decompression on windows, so using 7-zip.
##'   Note: Removes the archives after decompression.
##' }
##' @param compfile Name of the compressed archive or rawdata (default 'rawdata.tar.bzip2')
##' @param basedir Name of raw data directory (default 'data-raw')
##' @param program Path to 7-zip program for Windows (default assumes on path)
decomp_raw <- function(compfile='rawdata.tar.bzip2', basedir = 'data-raw', program='7z') {
    compfile <- file.path(basedir, compfile)
    tarfile <- file.path(basedir, paste(sub('([^.]+).*', '\\1',
                                            basename(compfile)), 'tar', sep='.'))
    ## Use 7-zip on windows
    if (Sys.info()[['sysname']] == 'Windows') {
        prog <- program                                                # using 7-zip
        args <- c('e', compfile, paste0('-o', file.path('.', basedir)))  # uncompress
        res <- system2(prog, args=args)
        if (res)
            stop('Need to specify path to 7-zip (7z.exe) or download from "http://www.7-zip.org/"')
        args <- c('x', tarfile)
        system2(prog, args)
        unlink(tarfile, recursive = TRUE, force=TRUE)
    } else {
        untar(tarfile=compfile)
        unlink(tarfile, recursive = TRUE, force=TRUE)
    }
}
