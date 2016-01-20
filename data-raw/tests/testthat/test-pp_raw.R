context('pp raw')
library(data.table)
library(sync.afs)

dkey <- copy(sync.afs::data_key)
pp <- sync.afs::get_data('pp_raw', path=sync.afs::get_path(), dkey)

test_that("CSAP8788 has unique values of 'Y' and 'N' in subplots for each species", {
    ## There should be no 'Y' and 'N' in the same combination of
    ## PPLOT/SPLOT/SPEC for CLASS == 'P'
    expect_equal(pp[ CLASS=='P', sum(CSAP8788 == 'Y')>0 & sum(CSAP8788 == 'N')>0,
                   by=c('PPLOT', 'SPLOT', 'SPEC')][, sum(V1) ], 0)
})

