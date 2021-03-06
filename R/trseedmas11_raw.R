##' trseedmas11_raw
##'
##' @format An object of class \code{data.table} (inherits from
##'   \code{data.frame}) with 751 rows and 61 columns.
##' \itemize {
##'     \item TRAN: "character" with 9 unique values and 0 NA values.
##'     \tabular{rrrrrrrrr}{
##'     \strong{E320} \tab \strong{E330} \tab \strong{E334} \tab \strong{E335} \tab \strong{S344} \tab \strong{W32} \tab \strong{W46} \tab \strong{W60} \tab \strong{W70}\cr
##'     78 \tab 61 \tab 109 \tab 76 \tab 138 \tab 75 \tab 38 \tab 89 \tab 87
##'     }
##'     \item TPLOT: "double" variable with 10 unique values in the range [15, 24], 0 NA values.
##'     \item TAG: "double" variable with 678 unique values in the range [1, 993796], 0 NA values.
##'     \item YRTAG: "double" variable with 2 unique values in the range [1999, 2011], 0 NA values.
##'     \item YRREC: "double" variable with 2 unique values in the range [2011, 2011], 714 NA values.
##'     \item STAT99: "character" with 2 unique values and 0 NA values.
##'     \tabular{rr}{
##'     \strong{""} \tab \strong{ALIVE}\cr
##'     331 \tab 420
##'     }
##'     \item STAT00: "character" with 4 unique values and 0 NA values.
##'     \tabular{rrrr}{
##'     \strong{""} \tab \strong{ALIVE} \tab \strong{DEAD} \tab \strong{NF}\cr
##'     338 \tab 380 \tab 29 \tab 4
##'     }
##'     \item STAT11: "character" with 5 unique values and 0 NA values.
##'     \tabular{rrrrr}{
##'     \strong{""} \tab \strong{ALIVE} \tab \strong{DEAD} \tab \strong{NF} \tab \strong{PF}\cr
##'     3 \tab 422 \tab 220 \tab 105 \tab 1
##'     }
##'     \item YRMORT: "double" variable with 3 unique values in the range [2000, 2011], 426 NA values.
##'     \item SPEC: "character" with 6 unique values and 0 NA values.
##'     \tabular{rrrrrr}{
##'     \strong{""} \tab \strong{ABBA} \tab \strong{BECO} \tab \strong{BESPP} \tab \strong{SOAM} \tab \strong{UK}\cr
##'     1 \tab 670 \tab 58 \tab 5 \tab 15 \tab 2
##'     }
##'     \item HT99: "double" variable with 59 unique values in the range [1, 96], 335 NA values.
##'     \item CII99: "double" variable with 7 unique values in the range [1, 4], 331 NA values.
##'     \item SUB99: "character" with 6 unique values and 0 NA values.
##'     \tabular{rrrrrr}{
##'     \strong{""} \tab \strong{1.5} \tab \strong{LITC} \tab \strong{LITM} \tab \strong{MSS} \tab \strong{WDG5}\cr
##'     336 \tab 1 \tab 110 \tab 36 \tab 266 \tab 2
##'     }
##'     \item SUBON99: "character" with 4 unique values and 0 NA values.
##'     \tabular{rrrr}{
##'     \strong{""} \tab \strong{BLA5} \tab \strong{RCK} \tab \strong{WDG5}\cr
##'     720 \tab 4 \tab 1 \tab 26
##'     }
##'     \item CII00: "double" variable with 6 unique values in the range [1, 3], 371 NA values.
##'     \item HT11: "double" variable with 210 unique values in the range [0.1, 104], 335 NA values.
##'     \item CII11: "double" variable with 7 unique values in the range [1, 4], 335 NA values.
##'     \item SUB11: "character" with 8 unique values and 0 NA values.
##'     \tabular{rrrrrrrr}{
##'     \strong{""} \tab \strong{BSOIL} \tab \strong{LITC} \tab \strong{LITD} \tab \strong{LITM} \tab \strong{MSS} \tab \strong{WDG2} \tab \strong{WDG5}\cr
##'     335 \tab 1 \tab 94 \tab 1 \tab 38 \tab 279 \tab 2 \tab 1
##'     }
##'     \item SUBON11: "character" with 6 unique values and 0 NA values.
##'     \tabular{rrrrrr}{
##'     \strong{""} \tab \strong{BLA5} \tab \strong{RCK} \tab \strong{STP} \tab \strong{WDA10} \tab \strong{WDG2}\cr
##'     717 \tab 5 \tab 3 \tab 4 \tab 2 \tab 20
##'     }
##'     \item YRREX: "double" variable with 14 unique values in the range [1994, 2011], 301 NA values.
##'     \item NOTES11: "character" with 30 unique values and 0 NA values.
##'     \item TERM11: "character" with 7 unique values and 0 NA values.
##'     \tabular{rrrrrrr}{
##'     \strong{""} \tab \strong{BK} \tab \strong{BRS} \tab \strong{DE} \tab \strong{HE} \tab \strong{ND} \tab \strong{NG}\cr
##'     336 \tab 17 \tab 4 \tab 10 \tab 367 \tab 8 \tab 9
##'     }
##'     \item PEX11: "double" variable with 48 unique values in the range [0, 7.6], 444 NA values.
##'     \item EX10: "double" variable with 43 unique values in the range [0.1, 7.5], 490 NA values.
##'     \item EX09: "double" variable with 48 unique values in the range [0.1, 15.2], 517 NA values.
##'     \item EX08: "double" variable with 53 unique values in the range [0.2, 8], 562 NA values.
##'     \item EX07: "double" variable with 47 unique values in the range [0.1, 14.2], 612 NA values.
##'     \item EX06: "double" variable with 53 unique values in the range [0.2, 14.1], 624 NA values.
##'     \item TERM99: "character" with 8 unique values and 0 NA values.
##'     \tabular{rrrrrrrr}{
##'     \strong{""} \tab \strong{BK} \tab \strong{BRS} \tab \strong{DE} \tab \strong{FOLIAGE} \tab \strong{HE} \tab \strong{ND} \tab \strong{NG}\cr
##'     342 \tab 3 \tab 1 \tab 6 \tab 1 \tab 386 \tab 7 \tab 5
##'     }
##'     \item EXTNOTES99: "character" with 11 unique values and 0 NA values.
##'     \tabular{rrrrrrrrrrr}{
##'     \strong{""} \tab \strong{0} \tab \strong{94} \tab \strong{95} \tab \strong{96 LAT} \tab \strong{97} \tab \strong{98} \tab \strong{E94 1} \tab \strong{E98-1} \tab \strong{LAT TO TERM} \tab \strong{NO E IN 99}\cr
##'     739 \tab 1 \tab 1 \tab 2 \tab 1 \tab 2 \tab 1 \tab 1 \tab 1 \tab 1 \tab 1
##'     }
##'     \item PEX99: "double" variable with 41 unique values in the range [0, 9.5], 585 NA values.
##'     \item EX98: "double" variable with 31 unique values in the range [0.3, 9.9], 584 NA values.
##'     \item EX97: "double" variable with 38 unique values in the range [0.2, 6.5], 588 NA values.
##'     \item EX96: "double" variable with 35 unique values in the range [0, 5.7], 595 NA values.
##'     \item EX95: "double" variable with 30 unique values in the range [0.3, 5.5], 629 NA values.
##'     \item EX94: "double" variable with 30 unique values in the range [0.2, 9.3], 646 NA values.
##'     \item HR: "double" variable with 31 unique values in the range [0, 1030], 16 NA values.
##'     \item DIST: "double" variable with 58 unique values in the range [0, 100], 1 NA value.
##'     \item EXCNT99: "double" variable with 8 unique values in the range [0, 6], 331 NA values.
##'     \item MINAGE99: "double" variable with 27 unique values in the range [2, 36], 583 NA values.
##'     \item D1RM99: "double" variable with 36 unique values in the range [0, 133], 583 NA values.
##'     \item D2RM99: "double" variable with 12 unique values in the range [0, 53], 590 NA values.
##'     \item NOTES99: "character" with 7 unique values and 0 NA values.
##'     \tabular{rrrrrrr}{
##'     \strong{""} \tab \strong{1 LAT LIVE} \tab \strong{CANT DO E} \tab \strong{L-SHAPED STE} \tab \strong{SPARSE NEEDL} \tab \strong{STEM IS L-SH} \tab \strong{TAG IS MADE}\cr
##'     743 \tab 1 \tab 1 \tab 2 \tab 1 \tab 1 \tab 2
##'     }
##'     \item STMLEN99: "double" variable with 135 unique values in the range [1.3, 145.2], 582 NA values.
##'     \item MINAGE11: "double" variable with 24 unique values in the range [2, 31], 494 NA values.
##'     \item FIELD: "character" with 3 unique values and 0 NA values.
##'     \tabular{rrr}{
##'     \strong{""} \tab \strong{early} \tab \strong{late}\cr
##'     6 \tab 76 \tab 669
##'     }
##'     \item D1RM11: "double" variable with 143 unique values in the range [0, 83], 431 NA values.
##'     \item D2RM11: "double" variable with 98 unique values in the range [0, 29.1], 413 NA values.
##'     \item EXCNT11: "double" variable with 8 unique values in the range [0, 6], 6 NA values.
##'     \item SLOPE87: "double" variable with 2 unique values in the range [41, 41], 734 NA values.
##'     \item MICR: "double" variable with 2 unique values in the range [3, 3], 734 NA values.
##'     \item CLASS: "character" with 1 unique values and 0 NA values.
##'     \tabular{r}{
##'     \strong{T}\cr
##'     751
##'     }
##'     \item ELEVCL: "character" with 2 unique values and 0 NA values.
##'     \tabular{rr}{
##'     \strong{H} \tab \strong{HH}\cr
##'     17 \tab 734
##'     }
##'     \item ASPCL: "character" with 3 unique values and 0 NA values.
##'     \tabular{rrr}{
##'     \strong{E} \tab \strong{S} \tab \strong{W}\cr
##'     324 \tab 138 \tab 289
##'     }
##'     \item ASP: "double" variable with 34 unique values in the range [12, 334], 0 NA values.
##'     \item ELEV: "double" variable with 38 unique values in the range [1189, 1400], 0 NA values.
##'     \item SLOPE99: "double" variable with 25 unique values in the range [23, 59], 17 NA values.
##'     \item slope11_d: "double" variable with 16 unique values in the range [10, 32], 302 NA values.
##'     \item asp11: "double" variable with 24 unique values in the range [54, 293], 360 NA values.
##'     \item elev_ft11: "double" variable with 21 unique values in the range [4094, 4506], 442 NA values.
##'     \item elev_m11: "double" variable with 15 unique values in the range [1232.8, 1357], 536 NA values.
##' }
"trseedmas11_raw"
