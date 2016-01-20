##' Permanent plot data in raw format (wide).
##'
##' A dataset containing tree data collected from the 80's to
##' until most recently in 2011.
##'
##' @format A data frame with 19011 rows and 43 variables.
##' \itemize{
##'   \item PPLOT: Permanent plot number
##'   \item SPLOT: Subplot number
##'   \item SPLOT98: Subplot number before correction in 2010.
##'   \item SPCRT: SPCRT=1 if it’s a subplot that got corrected after 1998 basing on BQUDX/BQUDY data.
##'   \item BQUDX: Quadrat number along X-axis (North -> West).  When missing, same procedure was followed as that for \code{BQCRDX}.
##'   \item BQUDY: Quadrat number along Y-axis (North -> East).  Same qualifications as \code{BQUDX}.
##'   \item BQCRDX: Distance along X axis (North -> West) within a 2x2 quadrat from center of the plant.  Only recorded for 1986 tagged trees, 1987 tagged trees and saplings, 1988 tagged saplings, and 1998 tagged trees and saplings.  When missing, and \code{BPCRDX} or \code{BPCRDY} were available, they were calculated from those variables.
##'   \item BQCRDY: Distance along Y axis (North -> East) within 2x2 quadrat.  Same qualifications as \code{BQCRDX}.
##'   \item BPCRDX: Distance along X axis (North -> West) from center of the plant within the whole plot.  When missing, this variable was calculated from \code{BPCRDX} and \code{BPCRDY}, or \code{BQUDX} and \code{BQUDY}.
##'   \item BPCRDY: Distance along Y axis (North -> East) from center of the plant within the whole plot.  Same qualifications as \code{BPCRDX}.
##'   \item CQUDX86: Quadrat number along X axis (North -> West) from center of tree crown collected in 1986 only.
##'   \item CQUDY86: Quadrat number along Y axis (North -> East) from center of tree crown collected in 1986 only.
##'   \item CQCRDX86: Distance along the X axis (North -> West) with 2x2 meter quadrat from the center of the crown.  Collected in 1986 only.
##'   \item CQCRDY86: Distance along the Y axis (North -> East) with 2x2 meter quadrat from the center of the crown.  Collected in 1986 only.
##'   \item CSAP8788: Indicates if all saplings in a subplot were tagged ('Y'/'N').
##'   \item CSAP98: Indicates if all saplings in a subplot were tagged ('Y'/'N').
##'   \item TAG: Tree tag number used since 1998.  Duplicated tags were marked (add .1 to the duplicated TAG number).
##'   \item TAGOLD: Old tag numbers used in 1986, 1987, 1988.
##'   \item SPEC: Tree species abbreviation
##'   \item CLASS: Type of sampling location
##'   \itemize{
##'      \item P: Permanent Plot
##'      \item A: Additional spruce 'ears'
##'      \item M: Met station plots.
##'   }
##'   \item YRTAG: Tagging year.  For 86, 87, 88, 98 tagged plants, this was derived from \code{CENSUS1}/\code{CENSUS2}.  In 2010, this was derived from merging 2010 data with data collected before.
##'   \item YRREC: Year of recruitments. Except the first census year, for trees, this is equal to \code{YRTAG}; and for saplings, this depends on \code{YRTAG} and whether this subplot was looked for sapling in previous census (\code{CSAP8687} and \code{CSAP98}).
##'   \item STAT86: 'ALIVE' or 'DEAD'. Status for 1986 tagged trees in regular east side permanent plots and additional spruce ears.
##'   \item STAT87: 'ALIVE' or 'DEAD'. Status for 1987 tagged trees in regular west permanent plots, additional spruce ears, and saplings in regular west side plots.
##'   \item STAT88: Status for 1988 tagged saplings in regular east and west side permanent plots and re-measurements for 1986 tagged trees. Only new live saplings were tagged in 1988, so \code{STAT88} for them are all equal to 'ALIVE'. \code{STAT88} for 86 trees were created based on \code{DECM88}.
##'   \item STAT89: Status for previously tagged 'PIRU' trees and saplings, which were created based on \code{DECM} collected for winter injury data in 1989.
##'   \item STAT98: 'ALIVE', 'DEAD', 'NF', 'PD'.  'NF' means not found, 'PD' means probably dead.
##'   \item STAT10: Status for previously tagged plants and newly tagged trees/saplings in regular plots and spruce ears.  Some plants that were dead in 1998 were also collected for status in 2010.  Possible values are 'ALIVE', 'DEAD', 'NF', 'NFC' (for additional spruce, field crew didn’t bring old data sheet during data collection, which means they didn’t look for specific additional spruces. So if a status was missing (assumed it was not found) for additional spruce).
##'   \item YRCA: Year of 'come back alive'.  It’s equal to 1988 or 2010. Four plants only. There might be plants that were identified as dead in 1986/1987 but came back alive in 1998.
##'   \item YRMORT: Year of mortality.  It’s equal to 1986, 1987, 1988, 1989, 1998, 2010, or 2011. When it’s missing, it means until the last year when a \code{STAT} was collected, the plant was still alive. This was recorded for as 1986, 1987, and 1998 or missing in mas98.ssd, and was updated after adding in 1988 re-measurement, 1989 winter injury data, 2010 data, and 2011 field check.
##'   \item DBH86: DBH measurements collected in 1986 for permanent regular trees (>=5cm) and additional spruce tree on plot 1~15.
##'   \item HTTCR86: Height to the top of live crown collected for 1986 tagged trees. This was NOT collected for all trees; some trees weren’t collected for height in 1986 were collected for height in 1987. For plot 14 and 15, Heights were only collected in subplot 2 in 1987.
##'   \item CRHT86: Crown height (from base of crown to top) collected in 1986, which is equal to \code{HTTCR86}-\code{HTBCR86} (height to the base of the crown).
##'   \item CLONG86: The longest width of a tree crown collected in 1986.
##'   \item CAZLNG86: Azimuth of the longest portion of a tree’s crown. This was always collected when \code{CLONG86} and \code{CPERP86} were collected except one tree.
##'   \item CPERP86: Width in the perpendicular direction of the longest portion of the crown. Not collected for all trees.
##'   \item DECM86: Decline status of trees in 1986 (values 1-5).
##'   \item DBH87: DBH of trees recorded in 1987.  DBH for saplings are missing.
##'   \item HTTCR87: Height to the top of live crown collected for trees and saplings tagged in 1987 (for trees mostly only for PIRU) and some trees tagged in 1986.  Note that most tagged trees are missing heights in 1987 (and only a few saplings).
##'   \item TOTHT87: Total heights (including the dead top if there is one) collected in 1987 for 1987 newly tagged tree/saplings and some 1986 tagged trees.
##'   \item CRHT87: Height of a crown collected in 1987 for 87 newly tagged trees (DBH87>=5cm) and some 86 tagged trees.(recorded as HT to the base and top of the crown).
##'   \item CPOS87: Crown position for both live and dead trees (>=5cm). Some were for 1986 tagged trees.
##'   \item CLITOP87: Angle to the top of a tree's crown measured with a clinometer in 1987, recorded for trees only.
##'   \item DECM87: Decline status in 1987.  Collected for both trees and saplings (values 1-5).
##'   \item DECW87: ?
##'   \item DSAPP87: Dead 'PIRU' saplings count in 1987.  Entered in 2013.  Missing for some subplots/plots.
##'   \item DSAPA87: Dead 'ABBA' saplings count in 1987.  See \code{DSAPP87}.
##'   \item DSAPB87: Dead 'BECO' saplings count in 1987.  See \code{DSAPP87}.
##'   \item HT88: Tree height (meters) collected in 1988 for 1988 tagged new saplings.
##'   \item CPOS88: Crown position measured in 1988 for 1986 tagged live or dead trees.
##'   \item DECM88: Decline class for 1986 tagged trees (values 0-5).
##'   \item 
##' }
"pp_raw"
