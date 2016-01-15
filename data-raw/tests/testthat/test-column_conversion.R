context("column conversion")
library(data.table)

source("../../R/convert_columns.R")

test_that('get_columns expands columns to type properly', {
    dat <- data.frame(a=runif(10), aa=runif(10), b=1:10, bb=runif(10))
    cols1 <- c('a+'='numeric', 'b'='integer', 'bb'='numeric')
    res <- get_columns(cols1, dat)
    
    expect_equal(res, c(a='numeric', aa='numeric', b='integer', bb='numeric'))
})

test_that('converting non-factor columns is checked correctly', {
    dat <- data.frame(a = runif(1:10))
    cols1 <- c('a'='integer')
    cols2 <- c(a = 'numeric')
    
    expect_error(convert_columns(cols1, dat, check=TRUE))
    expect_output(convert_columns(cols2, dat, check=TRUE))
})

