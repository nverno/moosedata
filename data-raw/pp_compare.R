library(haven)
library(data.table)
basedir <- 'data-raw'

pp <- read.csv(file.path("data-raw", "raw", "pp.csv"))
pp1 <- read_sas(file.path(basedir, "afs", "pptreemas10bv.sas7bdat"))
