##' soilmas11_raw
##'
##' @format An object of class \code{data.table} (inherits from
##'   \code{data.frame}) with 490 rows and 88 columns.
##' \itemize {
##'     \item pplot: "double" variable with 25 unique values in the range [4, 27], 466 NA values.
##'     \item tran: "character" with 12 unique values and 0 NA values.
##'     \tabular{rrrrrrrrrrrr}{
##'     \strong{""} \tab \strong{E320} \tab \strong{E330} \tab \strong{E334} \tab \strong{E335} \tab \strong{N326} \tab \strong{S26} \tab \strong{S344} \tab \strong{W32} \tab \strong{W46} \tab \strong{W60} \tab \strong{W70}\cr
##'     273 \tab 20 \tab 20 \tab 23 \tab 20 \tab 15 \tab 12 \tab 9 \tab 25 \tab 24 \tab 23 \tab 26
##'     }
##'     \item tplot: "double" variable with 33 unique values in the range [-6, 24], 273 NA values.
##'     \item contnam: "character" with 10 unique values and 0 NA values.
##'     \tabular{rrrrrrrrrr}{
##'     \strong{""} \tab \strong{HE1080} \tab \strong{HE140} \tab \strong{HE460} \tab \strong{HW400} \tab \strong{HW620} \tab \strong{LE1860} \tab \strong{LW1900} \tab \strong{ME2020} \tab \strong{MW1580}\cr
##'     241 \tab 15 \tab 7 \tab 22 \tab 10 \tab 15 \tab 34 \tab 48 \tab 58 \tab 40
##'     }
##'     \item stpace: "double" variable with 89 unique values in the range [0, 1880], 241 NA values.
##'     \item soilcl: "character" with 4 unique values and 0 NA values.
##'     \tabular{rrrr}{
##'     \strong{H} \tab \strong{I} \tab \strong{M} \tab \strong{S}\cr
##'     284 \tab 98 \tab 12 \tab 96
##'     }
##'     \item histo: "double" variable with 22 unique values in the range [0, 20], 24 NA values.
##'     \item spodo: "double" variable with 20 unique values in the range [0, 18], 24 NA values.
##'     \item incep: "double" variable with 21 unique values in the range [0, 20], 24 NA values.
##'     \item miner: "double" variable with 22 unique values in the range [0, 20], 24 NA values.
##'     \item rock: "double" variable with 14 unique values in the range [0, 13], 24 NA values.
##'     \item phisto: "double" variable with 115 unique values in the range [0, 1], 25 NA values.
##'     \item elevcl: "character" with 6 unique values and 0 NA values.
##'     \tabular{rrrrrr}{
##'     \strong{""} \tab \strong{H} \tab \strong{HH} \tab \strong{L} \tab \strong{LL} \tab \strong{M}\cr
##'     2 \tab 130 \tab 46 \tab 133 \tab 26 \tab 153
##'     }
##'     \item aspcl: "character" with 4 unique values and 0 NA values.
##'     \tabular{rrrr}{
##'     \strong{E} \tab \strong{N} \tab \strong{S} \tab \strong{W}\cr
##'     231 \tab 15 \tab 21 \tab 223
##'     }
##'     \item point_x: "double" variable with 486 unique values in the range [-71.869, -71.808], 4 NA values.
##'     \item point_y: "double" variable with 487 unique values in the range [43.984, 44.047], 4 NA values.
##'     \item interp: "double" variable with 2 unique values in the range [1, 1], 168 NA values.
##'     \item long: "double" variable with 242 unique values in the range [-71.869, -71.807], 248 NA values.
##'     \item lat: "double" variable with 243 unique values in the range [43.984, 44.047], 248 NA values.
##'     \item Date: 
##'     \item S1: "character" with 52 unique values and 0 NA values.
##'     \item S2: "character" with 54 unique values and 0 NA values.
##'     \item S3: "character" with 55 unique values and 0 NA values.
##'     \item S4: "character" with 53 unique values and 0 NA values.
##'     \item S5: "character" with 51 unique values and 0 NA values.
##'     \item S6: "character" with 59 unique values and 0 NA values.
##'     \item S7: "character" with 54 unique values and 0 NA values.
##'     \item S8: "character" with 57 unique values and 0 NA values.
##'     \item S9: "character" with 52 unique values and 0 NA values.
##'     \item S10: "character" with 55 unique values and 0 NA values.
##'     \item S11: "character" with 51 unique values and 0 NA values.
##'     \item S12: "character" with 60 unique values and 0 NA values.
##'     \item S13: "character" with 59 unique values and 0 NA values.
##'     \item S14: "character" with 63 unique values and 0 NA values.
##'     \item S15: "character" with 55 unique values and 0 NA values.
##'     \item S16: "character" with 58 unique values and 0 NA values.
##'     \item S17: "character" with 51 unique values and 0 NA values.
##'     \item S18: "character" with 57 unique values and 0 NA values.
##'     \item S19: "character" with 58 unique values and 0 NA values.
##'     \item S20: "character" with 58 unique values and 0 NA values.
##'     \item notes: "character" with 22 unique values and 0 NA values.
##'     \item SOILCL1: "character" with 5 unique values and 0 NA values.
##'     \tabular{rrrrr}{
##'     \strong{""} \tab \strong{H} \tab \strong{I} \tab \strong{R} \tab \strong{S}\cr
##'     25 \tab 244 \tab 76 \tab 71 \tab 74
##'     }
##'     \item SOILCL2: "character" with 5 unique values and 0 NA values.
##'     \tabular{rrrrr}{
##'     \strong{""} \tab \strong{H} \tab \strong{I} \tab \strong{R} \tab \strong{S}\cr
##'     24 \tab 243 \tab 85 \tab 58 \tab 80
##'     }
##'     \item SOILCL3: "character" with 5 unique values and 0 NA values.
##'     \tabular{rrrrr}{
##'     \strong{""} \tab \strong{H} \tab \strong{I} \tab \strong{R} \tab \strong{S}\cr
##'     25 \tab 241 \tab 82 \tab 76 \tab 66
##'     }
##'     \item SOILCL4: "character" with 5 unique values and 0 NA values.
##'     \tabular{rrrrr}{
##'     \strong{""} \tab \strong{H} \tab \strong{I} \tab \strong{R} \tab \strong{S}\cr
##'     25 \tab 224 \tab 87 \tab 81 \tab 73
##'     }
##'     \item SOILCL5: "character" with 5 unique values and 0 NA values.
##'     \tabular{rrrrr}{
##'     \strong{""} \tab \strong{H} \tab \strong{I} \tab \strong{R} \tab \strong{S}\cr
##'     24 \tab 241 \tab 83 \tab 75 \tab 67
##'     }
##'     \item SOILCL6: "character" with 5 unique values and 0 NA values.
##'     \tabular{rrrrr}{
##'     \strong{""} \tab \strong{H} \tab \strong{I} \tab \strong{R} \tab \strong{S}\cr
##'     24 \tab 244 \tab 78 \tab 77 \tab 67
##'     }
##'     \item SOILCL7: "character" with 5 unique values and 0 NA values.
##'     \tabular{rrrrr}{
##'     \strong{""} \tab \strong{H} \tab \strong{I} \tab \strong{R} \tab \strong{S}\cr
##'     24 \tab 226 \tab 97 \tab 65 \tab 78
##'     }
##'     \item SOILCL8: "character" with 5 unique values and 0 NA values.
##'     \tabular{rrrrr}{
##'     \strong{""} \tab \strong{H} \tab \strong{I} \tab \strong{R} \tab \strong{S}\cr
##'     25 \tab 221 \tab 77 \tab 78 \tab 89
##'     }
##'     \item SOILCL9: "character" with 5 unique values and 0 NA values.
##'     \tabular{rrrrr}{
##'     \strong{""} \tab \strong{H} \tab \strong{I} \tab \strong{R} \tab \strong{S}\cr
##'     25 \tab 238 \tab 81 \tab 63 \tab 83
##'     }
##'     \item SOILCL10: "character" with 5 unique values and 0 NA values.
##'     \tabular{rrrrr}{
##'     \strong{""} \tab \strong{H} \tab \strong{I} \tab \strong{R} \tab \strong{S}\cr
##'     26 \tab 228 \tab 85 \tab 67 \tab 84
##'     }
##'     \item SOILCL11: "character" with 5 unique values and 0 NA values.
##'     \tabular{rrrrr}{
##'     \strong{""} \tab \strong{H} \tab \strong{I} \tab \strong{R} \tab \strong{S}\cr
##'     25 \tab 232 \tab 81 \tab 68 \tab 84
##'     }
##'     \item SOILCL12: "character" with 5 unique values and 0 NA values.
##'     \tabular{rrrrr}{
##'     \strong{""} \tab \strong{H} \tab \strong{I} \tab \strong{R} \tab \strong{S}\cr
##'     25 \tab 240 \tab 79 \tab 74 \tab 72
##'     }
##'     \item SOILCL13: "character" with 5 unique values and 0 NA values.
##'     \tabular{rrrrr}{
##'     \strong{""} \tab \strong{H} \tab \strong{I} \tab \strong{R} \tab \strong{S}\cr
##'     25 \tab 222 \tab 90 \tab 85 \tab 68
##'     }
##'     \item SOILCL14: "character" with 5 unique values and 0 NA values.
##'     \tabular{rrrrr}{
##'     \strong{""} \tab \strong{H} \tab \strong{I} \tab \strong{R} \tab \strong{S}\cr
##'     25 \tab 232 \tab 80 \tab 68 \tab 85
##'     }
##'     \item SOILCL15: "character" with 5 unique values and 0 NA values.
##'     \tabular{rrrrr}{
##'     \strong{""} \tab \strong{H} \tab \strong{I} \tab \strong{R} \tab \strong{S}\cr
##'     25 \tab 241 \tab 71 \tab 71 \tab 82
##'     }
##'     \item SOILCL16: "character" with 5 unique values and 0 NA values.
##'     \tabular{rrrrr}{
##'     \strong{""} \tab \strong{H} \tab \strong{I} \tab \strong{R} \tab \strong{S}\cr
##'     25 \tab 223 \tab 84 \tab 88 \tab 70
##'     }
##'     \item SOILCL17: "character" with 5 unique values and 0 NA values.
##'     \tabular{rrrrr}{
##'     \strong{""} \tab \strong{H} \tab \strong{I} \tab \strong{R} \tab \strong{S}\cr
##'     25 \tab 234 \tab 82 \tab 75 \tab 74
##'     }
##'     \item SOILCL18: "character" with 5 unique values and 0 NA values.
##'     \tabular{rrrrr}{
##'     \strong{""} \tab \strong{H} \tab \strong{I} \tab \strong{R} \tab \strong{S}\cr
##'     25 \tab 210 \tab 100 \tab 78 \tab 77
##'     }
##'     \item SOILCL19: "character" with 5 unique values and 0 NA values.
##'     \tabular{rrrrr}{
##'     \strong{""} \tab \strong{H} \tab \strong{I} \tab \strong{R} \tab \strong{S}\cr
##'     25 \tab 214 \tab 95 \tab 78 \tab 78
##'     }
##'     \item SOILCL20: "character" with 5 unique values and 0 NA values.
##'     \tabular{rrrrr}{
##'     \strong{""} \tab \strong{H} \tab \strong{I} \tab \strong{R} \tab \strong{S}\cr
##'     26 \tab 214 \tab 95 \tab 73 \tab 82
##'     }
##'     \item DISRCK1: "double" variable with 18 unique values in the range [0, 45], 283 NA values.
##'     \item DISRCK2: "double" variable with 20 unique values in the range [0, 60], 272 NA values.
##'     \item DISRCK3: "double" variable with 20 unique values in the range [0, 55], 256 NA values.
##'     \item DISRCK4: "double" variable with 19 unique values in the range [0, 60], 257 NA values.
##'     \item DISRCK5: "double" variable with 17 unique values in the range [0, 50], 257 NA values.
##'     \item DISRCK6: "double" variable with 19 unique values in the range [0, 65], 261 NA values.
##'     \item DISRCK7: "double" variable with 20 unique values in the range [0, 70], 285 NA values.
##'     \item DISRCK8: "double" variable with 19 unique values in the range [0, 55], 274 NA values.
##'     \item DISRCK9: "double" variable with 19 unique values in the range [0, 55], 287 NA values.
##'     \item DISRCK10: "double" variable with 19 unique values in the range [0, 60], 277 NA values.
##'     \item DISRCK11: "double" variable with 19 unique values in the range [0, 60], 293 NA values.
##'     \item DISRCK12: "double" variable with 19 unique values in the range [0, 55], 263 NA values.
##'     \item DISRCK13: "double" variable with 16 unique values in the range [0, 50], 257 NA values.
##'     \item DISRCK14: "double" variable with 20 unique values in the range [0, 80], 266 NA values.
##'     \item DISRCK15: "double" variable with 19 unique values in the range [0, 70], 267 NA values.
##'     \item DISRCK16: "double" variable with 20 unique values in the range [0, 80], 264 NA values.
##'     \item DISRCK17: "double" variable with 18 unique values in the range [0, 65], 270 NA values.
##'     \item DISRCK18: "double" variable with 19 unique values in the range [0, 80], 266 NA values.
##'     \item DISRCK19: "double" variable with 20 unique values in the range [0, 55], 269 NA values.
##'     \item DISRCK20: "double" variable with 20 unique values in the range [0, 65], 286 NA values.
##'     \item SLOPE86: "double" variable with 37 unique values in the range [7, 44], 381 NA values.
##'     \item PSPRUCE: "character" with 62 unique values and 0 NA values.
##'     \item PCON: "character" with 40 unique values and 0 NA values.
##'     \item SOILS: "character" with 3 unique values and 0 NA values.
##'     \tabular{rrr}{
##'     \strong{""} \tab \strong{h} \tab \strong{m}\cr
##'     244 \tab 120 \tab 126
##'     }
##'     \item F: "double" variable with 22 unique values in the range [0, 20], 355 NA values.
##'     \item M: "double" variable with 21 unique values in the range [0, 20], 355 NA values.
##'     \item R: "double" variable with 9 unique values in the range [0, 7], 355 NA values.
##' }
"soilmas11_raw"
