##' firmash_raw
##'
##' @format An object of class \code{data.table} (inherits from
##'   \code{data.frame}) with 296 rows and 133 columns.
##' \itemize {
##'     \item TRANID: "character" with 10 unique values and 0 NA values.
##'     \tabular{rrrrrrrrrr}{
##'     \strong{""} \tab \strong{E320} \tab \strong{E330} \tab \strong{E334} \tab \strong{E335} \tab \strong{S344} \tab \strong{W32} \tab \strong{W46} \tab \strong{W60} \tab \strong{W70}\cr
##'     2 \tab 34 \tab 27 \tab 34 \tab 28 \tab 33 \tab 28 \tab 35 \tab 34 \tab 41
##'     }
##'     \item PLOT: "double" variable with 10 unique values in the range [16, 24], 2 NA values.
##'     \item DISK: "double" variable with 219 unique values in the range [1, 443], 77 NA values.
##'     \item TRAKCORE: "double" variable with 78 unique values in the range [2.1, 82.2], 219 NA values.
##'     \item SPECIES: "character" with 2 unique values and 0 NA values.
##'     \tabular{rr}{
##'     \strong{""} \tab \strong{ABBA}\cr
##'     2 \tab 294
##'     }
##'     \item CII: "double" variable with 8 unique values in the range [1, 5], 31 NA values.
##'     \item DAH1: "double" variable with 213 unique values in the range [0.04, 25.5], 2 NA values.
##'     \item DAH2: "double" variable with 160 unique values in the range [0.03, 8.5], 90 NA values.
##'     \item DBH1: "double" variable with 93 unique values in the range [0.29, 20.9], 173 NA values.
##'     \item DBH2: "double" variable with 43 unique values in the range [0, 4.66], 252 NA values.
##'     \item HT99: "double" variable with 183 unique values in the range [3, 865], 3 NA values.
##'     \item SUB: "character" with 8 unique values and 0 NA values.
##'     \tabular{rrrrrrrr}{
##'     \strong{""} \tab \strong{1} \tab \strong{2} \tab \strong{3} \tab \strong{CON LITT} \tab \strong{LITTER} \tab \strong{MIXED LI} \tab \strong{MOSS}\cr
##'     106 \tab 4 \tab 2 \tab 2 \tab 74 \tab 9 \tab 4 \tab 95
##'     }
##'     \item ON: "character" with 5 unique values and 0 NA values.
##'     \tabular{rrrrr}{
##'     \strong{""} \tab \strong{DEAD WOO} \tab \strong{LIVE WOO} \tab \strong{ROCK} \tab \strong{TIPUP}\cr
##'     277 \tab 9 \tab 3 \tab 6 \tab 1
##'     }
##'     \item TERM99: "character" with 8 unique values and 0 NA values.
##'     \tabular{rrrrrrrr}{
##'     \strong{""} \tab \strong{1} \tab \strong{2} \tab \strong{BROKEN} \tab \strong{BROWSED} \tab \strong{DEAD} \tab \strong{HEALTHY} \tab \strong{NO DOMIN}\cr
##'     24 \tab 10 \tab 1 \tab 8 \tab 1 \tab 22 \tab 214 \tab 16
##'     }
##'     \item E99: "double" variable with 87 unique values in the range [0.09, 28.7], 111 NA values.
##'     \item E98: "double" variable with 71 unique values in the range [0.07, 26.2], 112 NA values.
##'     \item E97: "double" variable with 76 unique values in the range [0.4, 21.5], 115 NA values.
##'     \item RCNT: "double" variable with 78 unique values in the range [4, 103], 44 NA values.
##'     \item AGECL: "character" with 4 unique values and 0 NA values.
##'     \tabular{rrrr}{
##'     \strong{""} \tab \strong{1 <10} \tab \strong{2 10~40} \tab \strong{3 >40}\cr
##'     44 \tab 18 \tab 150 \tab 84
##'     }
##'     \item RW1998: "double" variable with 251 unique values in the range [0.014, 3.148], 44 NA values.
##'     \item RW1997: "double" variable with 252 unique values in the range [0.021, 2.936], 44 NA values.
##'     \item RW1996: "double" variable with 250 unique values in the range [0.031, 3.401], 44 NA values.
##'     \item RW1995: "double" variable with 252 unique values in the range [0.022, 3.29], 44 NA values.
##'     \item RW1994: "double" variable with 252 unique values in the range [0.032, 3.644], 45 NA values.
##'     \item RW1993: "double" variable with 251 unique values in the range [0.017, 3.476], 46 NA values.
##'     \item RW1992: "double" variable with 251 unique values in the range [0.013, 4.018], 46 NA values.
##'     \item RW1991: "double" variable with 247 unique values in the range [0.018, 3.874], 50 NA values.
##'     \item RW1990: "double" variable with 243 unique values in the range [0.014, 4.111], 52 NA values.
##'     \item RW1989: "double" variable with 238 unique values in the range [0.022, 3.591], 57 NA values.
##'     \item RW1988: "double" variable with 234 unique values in the range [0.024, 3.267], 62 NA values.
##'     \item RW1987: "double" variable with 231 unique values in the range [0.039, 3.234], 66 NA values.
##'     \item RW1986: "double" variable with 226 unique values in the range [0.028, 2.725], 71 NA values.
##'     \item RW1985: "double" variable with 219 unique values in the range [0.029, 3.361], 77 NA values.
##'     \item RW1984: "double" variable with 214 unique values in the range [0.031, 2.981], 83 NA values.
##'     \item RW1983: "double" variable with 203 unique values in the range [0.028, 2.983], 93 NA values.
##'     \item RW1982: "double" variable with 194 unique values in the range [0.032, 2.862], 101 NA values.
##'     \item RW1981: "double" variable with 189 unique values in the range [0.016, 2.439], 107 NA values.
##'     \item RW1980: "double" variable with 185 unique values in the range [0.02, 2.554], 112 NA values.
##'     \item RW1979: "double" variable with 178 unique values in the range [0.009, 2.237], 116 NA values.
##'     \item RW1978: "double" variable with 174 unique values in the range [0.029, 2.148], 122 NA values.
##'     \item RW1977: "double" variable with 171 unique values in the range [0.013, 2.142], 125 NA values.
##'     \item RW1976: "double" variable with 168 unique values in the range [0.035, 2.505], 129 NA values.
##'     \item RW1975: "double" variable with 163 unique values in the range [0.042, 3.016], 132 NA values.
##'     \item RW1974: "double" variable with 158 unique values in the range [0.021, 2.879], 138 NA values.
##'     \item RW1973: "double" variable with 158 unique values in the range [0.033, 2.836], 139 NA values.
##'     \item RW1972: "double" variable with 152 unique values in the range [0.014, 3.088], 144 NA values.
##'     \item RW1971: "double" variable with 148 unique values in the range [0.022, 2.821], 149 NA values.
##'     \item RW1970: "double" variable with 143 unique values in the range [0.038, 2.827], 154 NA values.
##'     \item RW1969: "double" variable with 139 unique values in the range [0.02, 3.666], 157 NA values.
##'     \item RW1968: "double" variable with 137 unique values in the range [0.035, 2.713], 160 NA values.
##'     \item RW1967: "double" variable with 133 unique values in the range [0.024, 2.878], 164 NA values.
##'     \item RW1966: "double" variable with 128 unique values in the range [0.036, 3.537], 169 NA values.
##'     \item RW1965: "double" variable with 123 unique values in the range [0.032, 3.18], 174 NA values.
##'     \item RW1964: "double" variable with 117 unique values in the range [0.054, 2.9], 180 NA values.
##'     \item RW1963: "double" variable with 111 unique values in the range [0.062, 3.053], 186 NA values.
##'     \item RW1962: "double" variable with 107 unique values in the range [0.055, 3.817], 190 NA values.
##'     \item RW1961: "double" variable with 100 unique values in the range [0.039, 2.792], 196 NA values.
##'     \item RW1960: "double" variable with 98 unique values in the range [0.051, 2.403], 198 NA values.
##'     \item RW1959: "double" variable with 92 unique values in the range [0.053, 2.298], 205 NA values.
##'     \item RW1958: "double" variable with 86 unique values in the range [0.054, 2.17], 211 NA values.
##'     \item RW1957: "double" variable with 77 unique values in the range [0.048, 2.129], 218 NA values.
##'     \item RW1956: "double" variable with 74 unique values in the range [0.043, 1.774], 223 NA values.
##'     \item RW1955: "double" variable with 68 unique values in the range [0.041, 2.912], 229 NA values.
##'     \item RW1954: "double" variable with 61 unique values in the range [0.048, 2.43], 236 NA values.
##'     \item RW1953: "double" variable with 57 unique values in the range [0.056, 2.511], 240 NA values.
##'     \item RW1952: "double" variable with 52 unique values in the range [0.045, 2.696], 243 NA values.
##'     \item RW1951: "double" variable with 50 unique values in the range [0.054, 2.598], 247 NA values.
##'     \item RW1950: "double" variable with 45 unique values in the range [0.041, 3.452], 252 NA values.
##'     \item RW1949: "double" variable with 42 unique values in the range [0.036, 3.128], 255 NA values.
##'     \item RW1948: "double" variable with 36 unique values in the range [0.03, 2.796], 261 NA values.
##'     \item RW1947: "double" variable with 31 unique values in the range [0.031, 2.699], 266 NA values.
##'     \item RW1946: "double" variable with 26 unique values in the range [0.03, 2.756], 271 NA values.
##'     \item RW1945: "double" variable with 23 unique values in the range [0.055, 2.545], 274 NA values.
##'     \item RW1944: "double" variable with 22 unique values in the range [0.053, 2.225], 275 NA values.
##'     \item RW1943: "double" variable with 21 unique values in the range [0.066, 2.685], 276 NA values.
##'     \item RW1942: "double" variable with 21 unique values in the range [0.054, 1.992], 276 NA values.
##'     \item RW1941: "double" variable with 20 unique values in the range [0.09, 2.338], 277 NA values.
##'     \item RW1940: "double" variable with 20 unique values in the range [0.039, 2.844], 277 NA values.
##'     \item RW1939: "double" variable with 19 unique values in the range [0.046, 2.67], 278 NA values.
##'     \item RW1938: "double" variable with 19 unique values in the range [0.1, 1.964], 278 NA values.
##'     \item RW1937: "double" variable with 19 unique values in the range [0.082, 2.354], 278 NA values.
##'     \item RW1936: "double" variable with 17 unique values in the range [0.094, 2.175], 280 NA values.
##'     \item RW1935: "double" variable with 15 unique values in the range [0.088, 2.3], 282 NA values.
##'     \item RW1934: "double" variable with 14 unique values in the range [0.111, 2.079], 283 NA values.
##'     \item RW1933: "double" variable with 14 unique values in the range [0.106, 1.976], 283 NA values.
##'     \item RW1932: "double" variable with 14 unique values in the range [0.122, 1.592], 283 NA values.
##'     \item RW1931: "double" variable with 12 unique values in the range [0.147, 1.586], 285 NA values.
##'     \item RW1930: "double" variable with 10 unique values in the range [0.093, 1.754], 287 NA values.
##'     \item RW1929: "double" variable with 10 unique values in the range [0.155, 2.231], 287 NA values.
##'     \item RW1928: "double" variable with 8 unique values in the range [0.139, 1.812], 289 NA values.
##'     \item RW1927: "double" variable with 8 unique values in the range [0.214, 1.699], 289 NA values.
##'     \item RW1926: "double" variable with 8 unique values in the range [0.208, 1.684], 289 NA values.
##'     \item RW1925: "double" variable with 7 unique values in the range [0.203, 1.808], 290 NA values.
##'     \item RW1924: "double" variable with 7 unique values in the range [0.258, 2.058], 290 NA values.
##'     \item RW1923: "double" variable with 7 unique values in the range [0.202, 2.307], 290 NA values.
##'     \item RW1922: "double" variable with 6 unique values in the range [0.272, 1.696], 291 NA values.
##'     \item RW1921: "double" variable with 6 unique values in the range [0.332, 2.399], 291 NA values.
##'     \item RW1920: "double" variable with 6 unique values in the range [0.443, 1.479], 291 NA values.
##'     \item RW1919: "double" variable with 5 unique values in the range [0.24, 2.023], 292 NA values.
##'     \item RW1918: "double" variable with 5 unique values in the range [0.202, 1.552], 292 NA values.
##'     \item RW1917: "double" variable with 5 unique values in the range [0.223, 0.824], 292 NA values.
##'     \item RW1916: "double" variable with 4 unique values in the range [0.27, 0.768], 293 NA values.
##'     \item RW1915: "double" variable with 4 unique values in the range [0.344, 0.909], 293 NA values.
##'     \item RW1914: "double" variable with 4 unique values in the range [0.408, 0.754], 293 NA values.
##'     \item RW1913: "double" variable with 4 unique values in the range [0.467, 0.751], 293 NA values.
##'     \item RW1912: "double" variable with 4 unique values in the range [0.304, 0.918], 293 NA values.
##'     \item RW1911: "double" variable with 3 unique values in the range [0.311, 0.751], 294 NA values.
##'     \item RW1910: "double" variable with 3 unique values in the range [0.256, 0.888], 294 NA values.
##'     \item RW1909: "double" variable with 3 unique values in the range [0.301, 0.876], 294 NA values.
##'     \item RW1908: "double" variable with 3 unique values in the range [0.442, 0.745], 294 NA values.
##'     \item RW1907: "double" variable with 3 unique values in the range [0.49, 0.879], 294 NA values.
##'     \item RW1906: "double" variable with 3 unique values in the range [0.525, 1.176], 294 NA values.
##'     \item RW1905: "double" variable with 3 unique values in the range [0.558, 1.344], 294 NA values.
##'     \item RW1904: "double" variable with 3 unique values in the range [0.471, 0.736], 294 NA values.
##'     \item RW1903: "double" variable with 3 unique values in the range [0.62, 0.782], 294 NA values.
##'     \item RW1902: "double" variable with 3 unique values in the range [0.639, 0.797], 294 NA values.
##'     \item RW1901: "double" variable with 3 unique values in the range [0.612, 0.844], 294 NA values.
##'     \item RW1900: "double" variable with 3 unique values in the range [0.358, 0.695], 294 NA values.
##'     \item RW1899: "double" variable with 3 unique values in the range [0.273, 0.825], 294 NA values.
##'     \item RW1898: "double" variable with 3 unique values in the range [0.363, 0.736], 294 NA values.
##'     \item RW1897: "double" variable with 3 unique values in the range [0.419, 0.664], 294 NA values.
##'     \item RW1896: "double" variable with 3 unique values in the range [0.432, 0.595], 294 NA values.
##'     \item RW1895: "double" variable with 3 unique values in the range [0.356, 0.749], 294 NA values.
##'     \item RW1894: "double" variable with 3 unique values in the range [0.407, 0.99], 294 NA values.
##'     \item RW1893: "double" variable with 2 unique values in the range [0.775, 0.775], 295 NA values.
##'     \item RW1892: "double" variable with 2 unique values in the range [0.432, 0.432], 295 NA values.
##'     \item notes: "character" with 25 unique values and 0 NA values.
##'     \item T1: "double" variable with 11 unique values in the range [250, 1150], 2 NA values.
##'     \item T2: "double" variable with 11 unique values in the range [250, 1150], 2 NA values.
##'     \item T3: "double" variable with 11 unique values in the range [250, 1150], 2 NA values.
##'     \item T4: "double" variable with 10 unique values in the range [250, 1050], 2 NA values.
##'     \item T5: "double" variable with 11 unique values in the range [250, 1150], 2 NA values.
##'     \item cht00: "double" variable with 25 unique values in the range [290, 1130], 2 NA values.
##' }
"firmash_raw"
