##' demomas11_raw
##'
##' @format An object of class \code{data.table} (inherits from
##'   \code{data.frame}) with 201 rows and 68 columns.
##' \itemize {
##'     \item SUBPLOT: "double" variable with 5 unique values in the range [1, 4], 5 NA values.
##'     \item TAG: "double" variable with 201 unique values in the range [9, 990147], 0 NA values.
##'     \item SPEC: "character" with 8 unique values and 0 NA values.
##'     \tabular{rrrrrrrr}{
##'     \strong{abba} \tab \strong{acpe} \tab \strong{acsa} \tab \strong{acsp} \tab \strong{beal} \tab \strong{beco} \tab \strong{bespp} \tab \strong{piru}\cr
##'     91 \tab 4 \tab 1 \tab 10 \tab 32 \tab 27 \tab 1 \tab 35
##'     }
##'     \item TAGYR: "double" variable with 11 unique values in the range [1987, 2011], 3 NA values.
##'     \item DECM87: "double" variable with 5 unique values in the range [1, 4], 161 NA values.
##'     \item DECM88: "double" variable with 5 unique values in the range [1, 5], 190 NA values.
##'     \item SIZE_m2: "double" variable with 3 unique values in the range [400, 1024], 31 NA values.
##'     \item DBH87: "double" variable with 57 unique values in the range [5.2, 45.3], 136 NA values.
##'     \item DBH87_CM: "character" with 46 unique values and 0 NA values.
##'     \item HT87: "double" variable with 52 unique values in the range [3.25, 21.95], 150 NA values.
##'     \item DBH88: "double" variable with 63 unique values in the range [5.4, 55.5], 122 NA values.
##'     \item HT88: "double" variable with 58 unique values in the range [4, 20.8], 132 NA values.
##'     \item DBH99: "double" variable with 23 unique values in the range [5.2, 38.6], 178 NA values.
##'     \item DBH01: "double" variable with 47 unique values in the range [6.2, 47.244], 151 NA values.
##'     \item DBH04: "double" variable with 44 unique values in the range [6.096, 47.498], 147 NA values.
##'     \item DBH05: "double" variable with 52 unique values in the range [5.207, 47.498], 142 NA values.
##'     \item DBH06: "double" variable with 51 unique values in the range [5.1, 47.498], 140 NA values.
##'     \item DBH07: "double" variable with 53 unique values in the range [5.2, 47.6], 140 NA values.
##'     \item DBH08: "double" variable with 55 unique values in the range [5.2, 47.7], 138 NA values.
##'     \item DBH09: "double" variable with 57 unique values in the range [5.2, 47.9], 138 NA values.
##'     \item DBH10: "double" variable with 116 unique values in the range [5, 48], 54 NA values.
##'     \item DBH11: "double" variable with 60 unique values in the range [5, 48.1], 136 NA values.
##'     \item STAT87: "character" with 3 unique values and 0 NA values.
##'     \tabular{rrr}{
##'     \strong{""} \tab \strong{ALIVE} \tab \strong{DEAD}\cr
##'     142 \tab 50 \tab 9
##'     }
##'     \item STAT88: "character" with 2 unique values and 0 NA values.
##'     \tabular{rr}{
##'     \strong{""} \tab \strong{ALIVE}\cr
##'     122 \tab 79
##'     }
##'     \item STAT99: "character" with 3 unique values and 0 NA values.
##'     \tabular{rrr}{
##'     \strong{""} \tab \strong{ALIVE} \tab \strong{DEAD}\cr
##'     175 \tab 23 \tab 3
##'     }
##'     \item STAT01: "character" with 3 unique values and 0 NA values.
##'     \tabular{rrr}{
##'     \strong{""} \tab \strong{ALIVE} \tab \strong{DEAD}\cr
##'     144 \tab 50 \tab 7
##'     }
##'     \item STAT04: "character" with 3 unique values and 0 NA values.
##'     \tabular{rrr}{
##'     \strong{""} \tab \strong{ALIVE} \tab \strong{DEAD}\cr
##'     139 \tab 54 \tab 8
##'     }
##'     \item STAT05: "character" with 3 unique values and 0 NA values.
##'     \tabular{rrr}{
##'     \strong{""} \tab \strong{ALIVE} \tab \strong{DEAD}\cr
##'     134 \tab 59 \tab 8
##'     }
##'     \item STAT06: "character" with 3 unique values and 0 NA values.
##'     \tabular{rrr}{
##'     \strong{""} \tab \strong{ALIVE} \tab \strong{DEAD}\cr
##'     131 \tab 61 \tab 9
##'     }
##'     \item STAT07: "character" with 3 unique values and 0 NA values.
##'     \tabular{rrr}{
##'     \strong{""} \tab \strong{ALIVE} \tab \strong{DEAD}\cr
##'     131 \tab 61 \tab 9
##'     }
##'     \item STAT08: "character" with 3 unique values and 0 NA values.
##'     \tabular{rrr}{
##'     \strong{""} \tab \strong{ALIVE} \tab \strong{DEAD}\cr
##'     128 \tab 63 \tab 10
##'     }
##'     \item STAT09: "character" with 3 unique values and 0 NA values.
##'     \tabular{rrr}{
##'     \strong{""} \tab \strong{ALIVE} \tab \strong{DEAD}\cr
##'     128 \tab 63 \tab 10
##'     }
##'     \item STAT10: "character" with 3 unique values and 0 NA values.
##'     \tabular{rrr}{
##'     \strong{""} \tab \strong{ALIVE} \tab \strong{DEAD}\cr
##'     34 \tab 147 \tab 20
##'     }
##'     \item STAT11: "character" with 3 unique values and 0 NA values.
##'     \tabular{rrr}{
##'     \strong{""} \tab \strong{ALIVE} \tab \strong{DEAD}\cr
##'     124 \tab 66 \tab 11
##'     }
##'     \item YRMORT: "double" variable with 9 unique values in the range [1987, 2011], 174 NA values.
##'     \item DATE: 
##'     \item PLOT: "double" variable with 2 unique values in the range [99, 99], 63 NA values.
##'     \item CLASS: "character" with 4 unique values and 0 NA values.
##'     \tabular{rrrr}{
##'     \strong{""} \tab \strong{A} \tab \strong{B} \tab \strong{C}\cr
##'     63 \tab 50 \tab 8 \tab 80
##'     }
##'     \item BQUDX: "double" variable with 17 unique values in the range [-2, 13], 71 NA values.
##'     \item BQUDY: "double" variable with 18 unique values in the range [-2, 14], 71 NA values.
##'     \item BQCRDX: "double" variable with 71 unique values in the range [0, 1.95], 71 NA values.
##'     \item BQCRDY: "double" variable with 70 unique values in the range [0, 2], 71 NA values.
##'     \item CQUDX: "double" variable with 18 unique values in the range [-4, 13], 87 NA values.
##'     \item CQUDY: "double" variable with 18 unique values in the range [-3, 13], 87 NA values.
##'     \item CQCRDX: "double" variable with 73 unique values in the range [0, 2], 87 NA values.
##'     \item CQCRDY: "double" variable with 64 unique values in the range [0, 2], 87 NA values.
##'     \item BPCRDX: "double" variable with 121 unique values in the range [-5.74, 25.1], 71 NA values.
##'     \item BPCRDY: "double" variable with 120 unique values in the range [-5.6, 26.25], 71 NA values.
##'     \item CPCRDX: "double" variable with 104 unique values in the range [-6.1, 25.95], 87 NA values.
##'     \item CPCRDY: "double" variable with 104 unique values in the range [-0.1, 31.95], 87 NA values.
##'     \item CRHT87: "double" variable with 46 unique values in the range [0.79, 14.55], 156 NA values.
##'     \item CLONG87: "double" variable with 37 unique values in the range [2, 13.1], 156 NA values.
##'     \item CAZLNG87: "double" variable with 40 unique values in the range [0, 360], 156 NA values.
##'     \item CPERP87: "double" variable with 35 unique values in the range [0.9, 11.6], 156 NA values.
##'     \item DECW87: "double" variable with 4 unique values in the range [1, 4], 161 NA values.
##'     \item CPOS87: "double" variable with 5 unique values in the range [1, 4], 158 NA values.
##'     \item CLITOP87: "double" variable with 52 unique values in the range [0.87, 21.95], 150 NA values.
##'     \item CLIBAS87: "double" variable with 45 unique values in the range [0.82, 10.42], 156 NA values.
##'     \item CRHT88: "double" variable with 62 unique values in the range [0.6, 13.9], 132 NA values.
##'     \item CLONG88: "double" variable with 41 unique values in the range [2.5, 15.1], 132 NA values.
##'     \item CAZLNG88: "double" variable with 62 unique values in the range [2, 358], 132 NA values.
##'     \item CPERP88: "double" variable with 42 unique values in the range [1.1, 12.8], 132 NA values.
##'     \item DECW88: "double" variable with 5 unique values in the range [1, 5], 190 NA values.
##'     \item CPOS88: "double" variable with 5 unique values in the range [1, 4], 122 NA values.
##'     \item CLITOP88: "double" variable with 57 unique values in the range [4, 20.8], 132 NA values.
##'     \item CLIBAS88: "double" variable with 46 unique values in the range [1.2, 9.2], 132 NA values.
##'     \item notes: "character" with 10 unique values and 0 NA values.
##'     \tabular{rrrrrrrrrr}{
##'     \strong{""} \tab \strong{2007 jennifer:effected by dendro band} \tab \strong{2007 jennifer:one live branch, significant decay in stem.} \tab \strong{2007 jennifer:outside of plot, witness tree?} \tab \strong{2007 jennifer:same tag # as in subplot 2, but actually in this sub plot ie, sub plot 1} \tab \strong{2009 ane:measured at 105 cm above nail or measured 5cm above original point of measure (which was 1 m above nail).} \tab \strong{2009 ane:swollen at pom, measured at original pom.  2011 David:swelling defect at dbh} \tab \strong{2009 meauring both large stem and branch-dbh point fused so hard to get into crack} \tab \strong{2009 meausred 3 times to make sure it's right} \tab \strong{2011 David:limb split at dbh in 2011}\cr
##'     192 \tab 1 \tab 1 \tab 1 \tab 1 \tab 1 \tab 1 \tab 1 \tab 1 \tab 1
##'     }
##'     \item I: "double" variable with 1 unique values in the range [9, 9], 0 NA values.
##' }
"demomas11_raw"
