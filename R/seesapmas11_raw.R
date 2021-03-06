##' seesapmas11_raw
##'
##' @format An object of class \code{data.table} (inherits from
##'   \code{data.frame}) with 6701 rows and 167 columns.
##' \itemize {
##'     \item CONTNAM: "character" with 9 unique values and 0 NA values.
##'     \tabular{rrrrrrrrr}{
##'     \strong{HE1080} \tab \strong{HE140} \tab \strong{HE460} \tab \strong{HW400} \tab \strong{HW620} \tab \strong{LE1860} \tab \strong{LW1900} \tab \strong{ME2020} \tab \strong{MW1580}\cr
##'     513 \tab 156 \tab 378 \tab 198 \tab 297 \tab 1402 \tab 1209 \tab 1801 \tab 747
##'     }
##'     \item STPACE: "double" variable with 78 unique values in the range [0, 2000], 0 NA values.
##'     \item ALONG: "double" variable with 2396 unique values in the range [-5.1, 39.52], 852 NA values.
##'     \item DISUPDN: "double" variable with 600 unique values in the range [-170, 94], 864 NA values.
##'     \item TAG: "double" variable with 4230 unique values in the range [1, 994000], 0 NA values.
##'     \item YRTAG: "double" variable with 6 unique values in the range [1988, 2011], 12 NA values.
##'     \item SPEC: "character" with 13 unique values and 0 NA values.
##'     \tabular{rrrrrrrrrrrrr}{
##'     \strong{""} \tab \strong{ABBA} \tab \strong{ACSA} \tab \strong{ACSP} \tab \strong{AMSPP} \tab \strong{BEAL} \tab \strong{BECO} \tab \strong{BEPA} \tab \strong{BESPP} \tab \strong{FAGR} \tab \strong{PIRU} \tab \strong{PRPE} \tab \strong{SOAM}\cr
##'     5 \tab 2220 \tab 416 \tab 3 \tab 16 \tab 292 \tab 994 \tab 1 \tab 116 \tab 100 \tab 1621 \tab 7 \tab 910
##'     }
##'     \item STAT88: "character" with 2 unique values and 0 NA values.
##'     \tabular{rr}{
##'     \strong{""} \tab \strong{ALIVE}\cr
##'     5536 \tab 1165
##'     }
##'     \item STAT89: "character" with 2 unique values and 0 NA values.
##'     \tabular{rr}{
##'     \strong{""} \tab \strong{ALIVE}\cr
##'     6423 \tab 278
##'     }
##'     \item STAT98: "character" with 4 unique values and 0 NA values.
##'     \tabular{rrrr}{
##'     \strong{""} \tab \strong{ALIVE} \tab \strong{DEAD} \tab \strong{NF}\cr
##'     3334 \tab 2828 \tab 489 \tab 50
##'     }
##'     \item STAT99: "character" with 4 unique values and 0 NA values.
##'     \tabular{rrrr}{
##'     \strong{""} \tab \strong{ALIVE} \tab \strong{DEAD} \tab \strong{NF}\cr
##'     320 \tab 5597 \tab 594 \tab 190
##'     }
##'     \item STAT00: "character" with 4 unique values and 0 NA values.
##'     \tabular{rrrr}{
##'     \strong{""} \tab \strong{ALIVE} \tab \strong{DEAD} \tab \strong{NF}\cr
##'     333 \tab 4937 \tab 1175 \tab 256
##'     }
##'     \item STAT11: "character" with 7 unique values and 0 NA values.
##'     \tabular{rrrrrrr}{
##'     \strong{""} \tab \strong{ALIVE} \tab \strong{DEAD} \tab \strong{NF} \tab \strong{NO} \tab \strong{PD} \tab \strong{PF}\cr
##'     580 \tab 1909 \tab 3159 \tab 992 \tab 13 \tab 31 \tab 17
##'     }
##'     \item YRMORT: "double" variable with 5 unique values in the range [1998, 2011], 2519 NA values.
##'     \item HT88: "double" variable with 517 unique values in the range [-14.3, 101], 5537 NA values.
##'     \item HT89: "double" variable with 205 unique values in the range [-1.8, 454], 6423 NA values.
##'     \item HT98: "double" variable with 630 unique values in the range [0.1, 920], 3897 NA values.
##'     \item HT99: "double" variable with 552 unique values in the range [-1, 696], 3642 NA values.
##'     \item HT11: "double" variable with 488 unique values in the range [-15, 931], 4786 NA values.
##'     \item STMLEN11: "double" variable with 49 unique values in the range [11, 980], 6650 NA values.
##'     \item AGE88: "double" variable with 41 unique values in the range [1, 50], 5762 NA values.
##'     \item MINAGE88: "double" variable with 39 unique values in the range [2, 54], 6505 NA values.
##'     \item MINAGE89: "double" variable with 31 unique values in the range [2, 43], 6550 NA values.
##'     \item PEX89: "double" variable with 78 unique values in the range [0, 30.3], 6423 NA values.
##'     \item EX88: "double" variable with 116 unique values in the range [0, 35.1], 6232 NA values.
##'     \item EX87: "double" variable with 165 unique values in the range [0, 35.9], 5208 NA values.
##'     \item EX86: "double" variable with 145 unique values in the range [0, 24.5], 5300 NA values.
##'     \item EX85: "double" variable with 144 unique values in the range [0, 24.5], 5508 NA values.
##'     \item EX84: "double" variable with 137 unique values in the range [0, 30.3], 5740 NA values.
##'     \item EX83: "double" variable with 129 unique values in the range [0, 20.2], 5816 NA values.
##'     \item EX82: "double" variable with 125 unique values in the range [0, 20.4], 5879 NA values.
##'     \item EX81: "double" variable with 122 unique values in the range [0, 25.4], 5940 NA values.
##'     \item EX80: "double" variable with 113 unique values in the range [0, 21.3], 6007 NA values.
##'     \item EX79: "double" variable with 93 unique values in the range [0, 11.5], 6136 NA values.
##'     \item EX78: "double" variable with 97 unique values in the range [0, 23], 6185 NA values.
##'     \item EX77: "double" variable with 47 unique values in the range [0.3, 17], 6620 NA values.
##'     \item EX76: "double" variable with 50 unique values in the range [0.4, 20.2], 6626 NA values.
##'     \item EX75: "double" variable with 48 unique values in the range [0.3, 27.1], 6631 NA values.
##'     \item EX74: "double" variable with 45 unique values in the range [0.3, 11.5], 6636 NA values.
##'     \item EX73: "double" variable with 44 unique values in the range [0.1, 32.3], 6642 NA values.
##'     \item EX72: "double" variable with 38 unique values in the range [0.1, 25], 6645 NA values.
##'     \item EX71: "double" variable with 42 unique values in the range [0.2, 20], 6649 NA values.
##'     \item EX70: "double" variable with 35 unique values in the range [0.2, 25], 6653 NA values.
##'     \item EX69: "double" variable with 34 unique values in the range [0, 21], 6655 NA values.
##'     \item EX68: "double" variable with 35 unique values in the range [0.3, 21.3], 6661 NA values.
##'     \item EX67: "double" variable with 31 unique values in the range [0.3, 18.2], 6665 NA values.
##'     \item EX66: "double" variable with 30 unique values in the range [0.4, 22], 6668 NA values.
##'     \item EX65: "double" variable with 29 unique values in the range [0.5, 15.1], 6672 NA values.
##'     \item EX64: "double" variable with 23 unique values in the range [0.7, 26.6], 6677 NA values.
##'     \item EX63: "double" variable with 23 unique values in the range [0.4, 19.5], 6678 NA values.
##'     \item EX62: "double" variable with 21 unique values in the range [0.9, 15.9], 6679 NA values.
##'     \item EX61: "double" variable with 16 unique values in the range [2.2, 17], 6683 NA values.
##'     \item EX60: "double" variable with 18 unique values in the range [0.2, 11.2], 6683 NA values.
##'     \item EX59: "double" variable with 18 unique values in the range [0.3, 21.3], 6684 NA values.
##'     \item EX58: "double" variable with 16 unique values in the range [0.3, 17.4], 6686 NA values.
##'     \item EX57: "double" variable with 16 unique values in the range [0.3, 11], 6686 NA values.
##'     \item EX56: "double" variable with 15 unique values in the range [1.4, 19.3], 6687 NA values.
##'     \item EX55: "double" variable with 14 unique values in the range [1.5, 30.2], 6687 NA values.
##'     \item EX54: "double" variable with 14 unique values in the range [1.2, 17.6], 6688 NA values.
##'     \item EX53: "double" variable with 13 unique values in the range [2, 10.6], 6689 NA values.
##'     \item EX52: "double" variable with 11 unique values in the range [2.5, 12.6], 6691 NA values.
##'     \item EX51: "double" variable with 8 unique values in the range [0, 11.3], 6694 NA values.
##'     \item EX50: "double" variable with 5 unique values in the range [4.8, 7], 6697 NA values.
##'     \item EX49: "double" variable with 5 unique values in the range [3.2, 11.8], 6697 NA values.
##'     \item EX48: "double" variable with 4 unique values in the range [5.7, 10.8], 6698 NA values.
##'     \item EX47: "double" variable with 4 unique values in the range [2.5, 3.3], 6698 NA values.
##'     \item EX46: "double" variable with 4 unique values in the range [2.8, 8.3], 6698 NA values.
##'     \item EX45: "double" variable with 3 unique values in the range [2.5, 3], 6699 NA values.
##'     \item EX44: "double" variable with 2 unique values in the range [8, 8], 6700 NA values.
##'     \item SUB88: "character" with 4 unique values and 0 NA values.
##'     \tabular{rrrr}{
##'     \strong{""} \tab \strong{LITT} \tab \strong{MSS} \tab \strong{WDG5}\cr
##'     5540 \tab 652 \tab 481 \tab 28
##'     }
##'     \item SUB89: "character" with 5 unique values and 0 NA values.
##'     \tabular{rrrrr}{
##'     \strong{""} \tab \strong{BSOIL} \tab \strong{LITT} \tab \strong{MSS} \tab \strong{WDG5}\cr
##'     6540 \tab 4 \tab 101 \tab 54 \tab 2
##'     }
##'     \item SUBON89: "character" with 4 unique values and 0 NA values.
##'     \tabular{rrrr}{
##'     \strong{""} \tab \strong{BSOIL} \tab \strong{LITT} \tab \strong{WDG5}\cr
##'     6657 \tab 10 \tab 18 \tab 16
##'     }
##'     \item ASPCL: "character" with 2 unique values and 0 NA values.
##'     \tabular{rr}{
##'     \strong{E} \tab \strong{W}\cr
##'     4250 \tab 2451
##'     }
##'     \item ELEVCL: "character" with 3 unique values and 0 NA values.
##'     \tabular{rrr}{
##'     \strong{H} \tab \strong{L} \tab \strong{M}\cr
##'     1542 \tab 2611 \tab 2548
##'     }
##'     \item DECM89: "double" variable with 5 unique values in the range [0, 3], 6584 NA values.
##'     \item TCVR88: "double" variable with 94 unique values in the range [0, 100], 5575 NA values.
##'     \item NFCVR88: "double" variable with 102 unique values in the range [0, 100], 5626 NA values.
##'     \item HRB1: "character" with 16 unique values and 0 NA values.
##'     \tabular{rrrrrrrrrrrrrrrr}{
##'     \strong{""} \tab \strong{ABBA} \tab \strong{ACPE_SH} \tab \strong{ACSP_SH} \tab \strong{ASAC} \tab \strong{BECO} \tab \strong{CASPP} \tab \strong{CLBO} \tab \strong{DRSPP} \tab \strong{LYLU} \tab \strong{MACA} \tab \strong{OXMO} \tab \strong{PIRU} \tab \strong{UKDE} \tab \strong{UKMO} \tab \strong{VIAL}\cr
##'     5548 \tab 402 \tab 1 \tab 7 \tab 5 \tab 4 \tab 1 \tab 4 \tab 21 \tab 1 \tab 1 \tab 42 \tab 101 \tab 2 \tab 549 \tab 12
##'     }
##'     \item HRB2: "character" with 23 unique values and 0 NA values.
##'     \item HRB3: "character" with 23 unique values and 0 NA values.
##'     \item PALONG: "double" variable with 64 unique values in the range [0, 1980], 5537 NA values.
##'     \item EXCNT88: "double" variable with 12 unique values in the range [0, 10], 5537 NA values.
##'     \item YRREX: "double" variable with 50 unique values in the range [1944, 1999], 3484 NA values.
##'     \item TERM99: "character" with 15 unique values and 0 NA values.
##'     \tabular{rrrrrrrrrrrrrrr}{
##'     \strong{""} \tab \strong{1} \tab \strong{BK} \tab \strong{BR} \tab \strong{BRS} \tab \strong{CANT ASS} \tab \strong{DE} \tab \strong{DEFOLIAT} \tab \strong{HE} \tab \strong{IN} \tab \strong{LITTLE F} \tab \strong{ND} \tab \strong{NG} \tab \strong{TREE LAY} \tab \strong{UN}\cr
##'     1233 \tab 3 \tab 65 \tab 8 \tab 145 \tab 2 \tab 194 \tab 1 \tab 4739 \tab 21 \tab 1 \tab 133 \tab 153 \tab 1 \tab 2
##'     }
##'     \item BRHT99: "double" variable with 7 unique values in the range [14.8, 97], 6695 NA values.
##'     \item TERM00: "character" with 8 unique values and 0 NA values.
##'     \tabular{rrrrrrrr}{
##'     \strong{""} \tab \strong{BR} \tab \strong{H} \tab \strong{HE} \tab \strong{NEW DOM} \tab \strong{NG} \tab \strong{NO DOM} \tab \strong{NO DOM/BR}\cr
##'     6614 \tab 1 \tab 68 \tab 1 \tab 2 \tab 5 \tab 9 \tab 1
##'     }
##'     \item CII00: "double" variable with 7 unique values in the range [1, 4], 1869 NA values.
##'     \item NOTES9899: "character" with 201 unique values and 0 NA values.
##'     \item NOTE00: "character" with 15 unique values and 0 NA values.
##'     \tabular{rrrrrrrrrrrrrrr}{
##'     \strong{""} \tab \strong{ABBA} \tab \strong{added  2000} \tab \strong{CA} \tab \strong{came alive in 2000. top dead, most needles gone.} \tab \strong{checked in 2000} \tab \strong{fallen tree has bent it} \tab \strong{flag found, but no tag or tree} \tab \strong{NF IN 1999, FOUND IN 2000} \tab \strong{not too many needles} \tab \strong{PIRU} \tab \strong{some brown needles} \tab \strong{TERM LEADER = H IN 99} \tab \strong{TERM99 recorded as H on hard copy} \tab \strong{two leaders}\cr
##'     6678 \tab 1 \tab 2 \tab 7 \tab 1 \tab 1 \tab 2 \tab 1 \tab 1 \tab 1 \tab 2 \tab 1 \tab 1 \tab 1 \tab 1
##'     }
##'     \item DECM98: "double" variable with 4 unique values in the range [1, 3], 6078 NA values.
##'     \item SUB98: "character" with 5 unique values and 0 NA values.
##'     \tabular{rrrrr}{
##'     \strong{""} \tab \strong{BSOIL} \tab \strong{LITT} \tab \strong{MSS} \tab \strong{WDG1}\cr
##'     5290 \tab 2 \tab 568 \tab 818 \tab 23
##'     }
##'     \item SUBON98: "character" with 4 unique values and 0 NA values.
##'     \tabular{rrrr}{
##'     \strong{""} \tab \strong{RCK} \tab \strong{TIP} \tab \strong{WDG1}\cr
##'     6348 \tab 67 \tab 14 \tab 272
##'     }
##'     \item SUB99: "character" with 8 unique values and 0 NA values.
##'     \tabular{rrrrrrrr}{
##'     \strong{""} \tab \strong{BSOIL} \tab \strong{LITC} \tab \strong{LITD} \tab \strong{LITM} \tab \strong{MSS} \tab \strong{RCK} \tab \strong{WDG5}\cr
##'     3230 \tab 9 \tab 439 \tab 398 \tab 1205 \tab 1388 \tab 1 \tab 31
##'     }
##'     \item SUBON99: "character" with 5 unique values and 0 NA values.
##'     \tabular{rrrrr}{
##'     \strong{""} \tab \strong{BLA5} \tab \strong{RCK} \tab \strong{TIP} \tab \strong{WDG5}\cr
##'     5914 \tab 32 \tab 191 \tab 30 \tab 534
##'     }
##'     \item MINAGE98: "double" variable with 58 unique values in the range [0.5, 71], 5788 NA values.
##'     \item D1RM98: "double" variable with 271 unique values in the range [0, 230], 5831 NA values.
##'     \item D2RM98: "double" variable with 105 unique values in the range [0, 154], 6248 NA values.
##'     \item MINAGE99: "double" variable with 54 unique values in the range [1, 65], 5767 NA values.
##'     \item D1RM99: "double" variable with 318 unique values in the range [0, 256], 5864 NA values.
##'     \item D2RM99: "double" variable with 161 unique values in the range [0, 180], 5899 NA values.
##'     \item PEX99: "double" variable with 172 unique values in the range [0, 37.5], 5853 NA values.
##'     \item PEX98: "double" variable with 150 unique values in the range [0, 27], 5741 NA values.
##'     \item EX98: "double" variable with 147 unique values in the range [0, 24.1], 5860 NA values.
##'     \item EX97: "double" variable with 182 unique values in the range [0, 28.3], 4934 NA values.
##'     \item EX96: "double" variable with 160 unique values in the range [0, 23.9], 4987 NA values.
##'     \item EX95: "double" variable with 169 unique values in the range [0, 24.9], 5053 NA values.
##'     \item EX94: "double" variable with 171 unique values in the range [0, 22.4], 5118 NA values.
##'     \item EX93: "double" variable with 149 unique values in the range [0, 99], 5215 NA values.
##'     \item EX92: "double" variable with 149 unique values in the range [0, 23.6], 5285 NA values.
##'     \item EX91: "double" variable with 150 unique values in the range [0, 28.7], 5363 NA values.
##'     \item EX90: "double" variable with 155 unique values in the range [0, 22.3], 5429 NA values.
##'     \item EX89: "double" variable with 146 unique values in the range [0, 23.3], 5519 NA values.
##'     \item ENOTE99: "character" with 30 unique values and 0 NA values.
##'     \item ENOTE98: "double" variable with 7 unique values in the range [1, 6], 6555 NA values.
##'     \item ENOTE97: "double" variable with 6 unique values in the range [1, 5], 6662 NA values.
##'     \item ENOTE96: "double" variable with 6 unique values in the range [1, 5], 6659 NA values.
##'     \item ENOTE95: "double" variable with 4 unique values in the range [1, 3], 6659 NA values.
##'     \item ENOTE94: "double" variable with 3 unique values in the range [1, 2], 6675 NA values.
##'     \item ENOTE93: "double" variable with 3 unique values in the range [1, 2], 6674 NA values.
##'     \item ENOTE92: "double" variable with 3 unique values in the range [1, 2], 6673 NA values.
##'     \item ENOTE91: "double" variable with 2 unique values in the range [1, 1], 6672 NA values.
##'     \item ENOTE90: "double" variable with 3 unique values in the range [1, 2], 6678 NA values.
##'     \item ENOTE89: "double" variable with 2 unique values in the range [1, 1], 6681 NA values.
##'     \item ENOTE88: "double" variable with 2 unique values in the range [1, 1], 6699 NA values.
##'     \item ENOTE87: "double" variable with 2 unique values in the range [1, 1], 6697 NA values.
##'     \item ENOTE86: "double" variable with 2 unique values in the range [1, 1], 6700 NA values.
##'     \item ENOTE85: "double" variable with 2 unique values in the range [1, 1], 6699 NA values.
##'     \item ENOTE84: "double" variable with 2 unique values in the range [1, 1], 6700 NA values.
##'     \item ENOTE83: "double" variable with 2 unique values in the range [1, 1], 6700 NA values.
##'     \item ENOTE82: "double" variable with 2 unique values in the range [1, 1], 6697 NA values.
##'     \item ENOTE81: "%s" variable, but all values are NA.
##'     \item ENOTE80: "double" variable with 2 unique values in the range [1, 1], 6697 NA values.
##'     \item ENOTE79: "double" variable with 2 unique values in the range [1, 1], 6700 NA values.
##'     \item ENOTE78: "double" variable with 2 unique values in the range [1, 1], 6700 NA values.
##'     \item ENOTE77: "double" variable with 2 unique values in the range [1, 1], 6700 NA values.
##'     \item FLAG: "double" variable with 2 unique values in the range [5, 5], 6697 NA values.
##'     \item CODE98: "double" variable with 3 unique values in the range [16, 23], 6660 NA values.
##'     \item tree: "character" with 3 unique values and 0 NA values.
##'     \tabular{rrr}{
##'     \strong{""} \tab \strong{sapling} \tab \strong{seed}\cr
##'     2132 \tab 818 \tab 3751
##'     }
##'     \item SDSP1: "character" with 5 unique values and 0 NA values.
##'     \tabular{rrrrr}{
##'     \strong{""} \tab \strong{ACSA} \tab \strong{BEAL} \tab \strong{BECO} \tab \strong{SOAM}\cr
##'     4713 \tab 406 \tab 141 \tab 112 \tab 1329
##'     }
##'     \item DSDSP1: "double" variable with 20 unique values in the range [2, 31], 4731 NA values.
##'     \item NSDSP1: "double" variable with 28 unique values in the range [2, 423], 4775 NA values.
##'     \item SDSP2: "character" with 2 unique values and 0 NA values.
##'     \tabular{rr}{
##'     \strong{""} \tab \strong{BECO}\cr
##'     6625 \tab 76
##'     }
##'     \item DSDSP2: "double" variable with 2 unique values in the range [16, 16], 6625 NA values.
##'     \item NSDSP2: "double" variable with 2 unique values in the range [62, 62], 6625 NA values.
##'     \item SEG88: "double" variable with 2 unique values in the range [1, 1], 5594 NA values.
##'     \item EXCNT98: "double" variable with 37 unique values in the range [0, 44], 4492 NA values.
##'     \item EXSUM98: "double" variable with 740 unique values in the range [0, 152.6], 5677 NA values.
##'     \item EXCNT99: "double" variable with 13 unique values in the range [0, 11], 3665 NA values.
##'     \item EXSUM99: "double" variable with 688 unique values in the range [0, 171.2], 5847 NA values.
##'     \item CHECK: "double" variable with 2 unique values in the range [1, 1], 6338 NA values.
##'     \item NL99_1: "double" variable with 12 unique values in the range [1989, 1999], 6562 NA values.
##'     \item NL99_2: "double" variable with 8 unique values in the range [1990, 1996], 6682 NA values.
##'     \item NL99_3: "double" variable with 2 unique values in the range [1992, 1992], 6700 NA values.
##'     \item NOTES11: "character" with 255 unique values and 0 NA values.
##'     \item SGDSP88: "character" with 5 unique values and 0 NA values.
##'     \tabular{rrrrr}{
##'     \strong{""} \tab \strong{0} \tab \strong{D2} \tab \strong{U1} \tab \strong{U2}\cr
##'     3619 \tab 161 \tab 193 \tab 570 \tab 2158
##'     }
##'     \item SGLEN8889: "double" variable with 69 unique values in the range [20.5, 43.5], 2857 NA values.
##'     \item SGDSP9899: "character" with 25 unique values and 0 NA values.
##'     \item SGLEN9899: "double" variable with 82 unique values in the range [16.7, 40], 441 NA values.
##'     \item CLASS: "character" with 1 unique values and 0 NA values.
##'     \tabular{r}{
##'     \strong{S}\cr
##'     6701
##'     }
##'     \item soilcl: "character" with 4 unique values and 0 NA values.
##'     \tabular{rrrr}{
##'     \strong{""} \tab \strong{H} \tab \strong{I} \tab \strong{S}\cr
##'     2936 \tab 1902 \tab 1268 \tab 595
##'     }
##'     \item histo: "double" variable with 21 unique values in the range [0, 20], 2936 NA values.
##'     \item spodo: "double" variable with 13 unique values in the range [0, 14], 2936 NA values.
##'     \item incep: "double" variable with 17 unique values in the range [0, 18], 2936 NA values.
##'     \item miner: "double" variable with 22 unique values in the range [0, 20], 2936 NA values.
##'     \item rock: "double" variable with 10 unique values in the range [0, 9], 2936 NA values.
##'     \item phisto: "double" variable with 50 unique values in the range [0, 1], 2936 NA values.
##'     \item SOILCL2: "character" with 3 unique values and 0 NA values.
##'     \tabular{rrr}{
##'     \strong{""} \tab \strong{H} \tab \strong{M}\cr
##'     2936 \tab 1902 \tab 1863
##'     }
##' }
"seesapmas11_raw"
