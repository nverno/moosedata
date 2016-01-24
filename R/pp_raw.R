##' Permanent plot data in raw format (wide).
##'
##' A dataset containing data from permanent plots established around 
##' Mt. Moosilauke in the White Mountains of New Hampshire.  Data was collected 
##' starting in the mid-1980's.  
##' See 'Permanent Data History 1986-2011.docx' for further information.
##'
##' @format A data frame with 19011 rows and 43 variables.
##' \itemize{
##'   \item PPLOT: Permanent plot number
##'   \item SPLOT: Subplot number
##'   \item SPLOT98: Subplot number before correction in 2010.
##'   \item SPCRT: '1' if it is a subplot that got corrected after 1998 basing on \code{BQUDX}/\code{BQUDY} data.
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
##'   \item CSAP[8788|98]: Indicates if all saplings (by species) in a subplot were tagged ('Y'/'N').  In 2010 census, all species were tagged in all 4 subplots.  In 1987/1988 'PIRU' were tagged in all 4 subplots.  In 1998, 'PIRU' and 'BECO' were tagged in all 4 subplots.
##'   \item TAG: Tree tag number used since 1998.  Duplicated tags were marked (add .1 to the duplicated TAG number).
##'   \item TAGOLD: Old tag numbers used in 1986, 1987, 1988.
##'   \item SPEC: Tree species abbreviation
##'   \itemize{
##'      \item ABBA: Abies balsamea (Balsam Fir)
##'      \item PIRU: Picea rubens (Red Spruce)
##'      \item BECO: Betula cordifolia (Mountain Paper Birch)
##'      \item BEAL: Betula alleghaniensis (Yellow Birch)
##'      \item BEPA: Betula papyrifera (Paper Birch)
##'      \item SOAM: Sorbus americana (Mountain Ash)
##'      \item ACSP: Acer spicatum (Mountain Maple)
##'      \item ACSA: Acer saccharum (Sugar Maple)
##'      \item ACPE: Acer pensylvanicum (Striped Maple)
##'      \item FAGR: Fagus grandifolia (American Beech)
##'      \item PRPE: Prunus pensylvanica (Pin Cherry)
##'      \item PRVI: Prunus virginiana (Chokecherry)
##'      \item UNID: Unidentified
##'      \item '': Missing
##'   }
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
##'   \item DSAPP88: Dead 'PIRU' saplings count in 1988.
##'   \item DSAPA88: Dead 'ABBA' saplings count in 1988.
##'   \item DSAPB88: Dead 'BECO' saplings count in 1988.
##'   \item EX[87-83]: Extension growth collected for 1988 tagged saplings.
##'   \item WD89OL: Characteristic winter damaage visible (1='Yes', 0='No') on 1987(1989?) or older growth.
##'   \item WD89AV: Average winter damage.
##'   \item EXWI89: Degree of exposure to wind.
##'   \item DECM89: Decline class for 1989.
##'   \item LVBD89: Number of live buds of ten examined in section for some 'PIRU' trees.
##'   \item DBH98: DBH measured for live and dead trees and saplings that were tall enough (>= 1.35m) in 1998.  Saplings that were not tall enough to be measured for DBH and \code{DBH98} were set to 0.  Notes: Some \code{DBH98} were missing.  If \code{DBH98} is equal to 0 for a dead plant, it was set as missing.  Heights were measured vertically, so a plant that had a leaning length of greater than 1.35 meters may still not have a DBH.
##'   \item TOTHT98: Total height measured in 1998 for both trees and saplings. It's the height to the dead top when a tree had a dead top, and it would be larger than \code{HTTCR98} in those cases.  When a tree did not have a dead top, \code{TOTHT98} is equal to \code{HTTCR98}.
##'   \item HTTCR98: Height to the top of the live crown for both trees and saplings.  Some are missing when \code{TOTHT98} is available.  When \code{HTTCR98} is missing and the plant is alive, \code{HTTCR98} was set to be the same as \code{TOTHT98}.
##'   \item HTBCR98: Height to the base of the live crown.
##'   \item CRHT98: Crown height (from base of crown to top), calculated as \code{HTTCR98} - \code{HTBCR98}.
##'   \item SNHT98: Height at which a tree was snapped, recorded mostly for dead plants (2 live plants).  See \code{DECAY98}.
##'   \item SNAZ98: Azimuth at which an individual snapped or tipped over.
##'   \item CRBASE98: Angle to the base of a tree crown.
##'   \item CRPOS98: Crown position for trees and some saplings (most saplings don't have \code{CPOS98}).  Mostly collected for live plants, and only for a few dead plants.
##'   \item DECM98: Decline class in 1998 (values 0-4).
##'   \item DECW98: ?
##'   \item COND98: Condition of tree in 1998.
##'   \itemize{
##'      \item 1: Standing dead
##'      \item 2: Snapped off
##'      \item 3: Tipped up
##'      \item 4: Leaning
##'   }
##'   \item DECAY98: Decay classes in 1998
##'   \itemize{
##'      \item 1: Recently dead, has fine twigs and bark.
##'      \item 2: Older, has large branches, likely losing bark.
##'      \item 3: Advanced stages of decay, may have some bark.
##'      \item 4: On the ground, soft, punky; bark falls of easily.
##'      \item 5: Punky to the core.
##'      \item 6: Snagging (sagging?).
##'      \item 7: Not found
##'   }
##'   \item AOL98: ?
##'   \item NOTE98: Created based mainly on \code{CODE98A} in mas98.ssd
##'   \itemize{
##'      \item HTC: height measured by clinometer.
##'      \item NL: new leader.
##'      \item NYR: no precise year of recruitment.  Plants that were in plot but not tagged in 1986/1987, and were tagged in 1998.
##'      \item OUT: plants outside the plot. But since we have been collecting data on them, so we keep them in our data set. ??
##'      \item PM: precise measurements.  Trees measured from the tree core.
##'      \item RL: Old tag lost, relabeled plants.  Not sure if relabeled with the same number of not.
##'      \item #ST[1-5]: Individual sharing base with [1-5] other stems.  When it shares a base with 2 or more other stems, the # is the tag number of one of the other stems.
##'      \item TM: tag moved.  New DBH location due to injury.
##'      \item TG: tag found on the ground.  For dead plants.  \code{STAT98} would be set as 'PD' (possibly dead).
##'      \item TNF: tag not found.  Dead tree in mapped location.  \code{STAT98} was set as 'PD'.
##'      \item CUT: tree cut down by trail work.  \code{YRMORT} was set as 1998 if not dead in 1986/1987.
##'      \item NTD: newly tagged dead trees.
##'   }
##'   \item WD98: The level of winter injury an individual has in 1998.  Only had values of 0 and 1, while 1 menas no winter damage visible.  0s were set as missing.
##'   \item ICE98: The level of ice damage a tree suffered from the January 1998 ice storm.  Only had values of 0 and 1, and 0s were set as missing.
##'   \item DBH10: DBH measured in 2010.
##'   \item HTTCR10: Tree height measured in 2010.
##'   \item DECM10: Decline class in 2010 for plots 4-6.  Decline class data was collected in all 4 subplots for coniferous trees and sapplings ('ABBA' and 'PIRU').  For plots 7-27, data was only collected in the free subplot.  Some are missing.  Decline classes were also collected for 'PIRU' trees and saplings in the additional spruce ears in each plot (some are missing).
##'   \item CPOS10: Crown position in 2010 for trees and saplings.  Mostly collected for live trees and saplings (a few for dead plants).  Note: some saplings are missing \code{CPOS10}.
##'   \item COND10: Tree condition in 2010.
##'   \itemize{
##'      \item 1: Standing dead
##'      \item 2: Snapped off
##'      \item 3: Tipped up
##'      \item 4: Leaning
##'   }
##'   \item DECAY10: Decay classes in 2010.  See \code{DECAY98}.
##'   \itemize{
##'      \item 1: Recently dead
##'      \item 2: Older, has larger branches, likely losing bark.
##'      \item 3: Advanced stages of decay, may have some bark.
##'      \item 4: On the ground, soft, punky, bark falls off easily.
##'      \item 5: Punky to core.
##'      \item 6: Sagging
##'      \item 7: Not found
##'   }
##'   \item AOL10: ?
##'   \item NOTE10:  Notes from 2010 sampling
##'   \itemize{
##'      \item CAC: 2010 come back alive trees that could be newly tagged plants with tags taken from previously tagged dead plants, which need to be field check in the future (We compared DBH or other data from pervious years and 2010, and decided they were not so possible to be the same plant and should be field checked later) Detail see "Problems and Corrections 2010.dox".
##'      \item CA: 2010 come back alive trees that got filed checked and confirmed in 2011.
##'      \item CS: Plants with species identification changed in 2010.
##'      \item NTD: New tagged dead plants.
##'      \item RL#: Previously tagged plants were relabeled in 2010.  # if the old tag number had it.
##'      \item Top broke off:
##'   }
##'   \item DBH11: DBH field check done in 2011.
##'   \item DAH11: Diameter at ankle height in 2011.
##'   \item HTTCR11: Plant height in 2011.
##'   \item CII11: Crown light index in 2011.
##'   \item NOTE11: Notes from sampling in 2011.
##'   \item ELEV: Elevation in meters.
##'   \item ELEVCL: Elevation class (L, M, H).
##'   \item ASP: Aspect in degrees.
##'   \item ASPCL: Aspect with respect to peak (E='East', W='West')
##'   \item SOILCL: Soil class.
##'   \item SLOPE8687: Slope collected in 87/87 in percentage.
##'   \item SLOPECL8687: ?
##'   \item LAND: ?
##'   \item MICR: Local relief of plot.  This is the visual shape of the local terrain.
##'   \itemize{
##'      \item CONC: concave
##'      \item CONV: convex
##'      \item PLAN: planar
##'   }
##'   \item MDBH[8687|98|10]: Maximum DBH for each plot (excluding additional spruce ears).
##'   \item EBV[86|87|98|10]: Estimated bole volumes for live plants in 1986, 1987, 1998, and 2010.
##'   \item MAXBV[8687|98|10]: Maximum bole volumes for each plot/year (excluding additional spruce ears).
##'   \item EHT[86|87|98|10]: Indicates if height was estimated (1='Yes').  Heights were estimated for
##'   \itemize{
##'      \item 1986: Additional spruce and regular trees that we forgot to collect height data for in 1986 (we collected height in 1987 for some of them: mainly subplot 2 for plots 14 and 15).
##'      \item 1987: Additional spruce and all other species (aside from 'PIRU') in the regular plots.
##'      \item 1998: Additional spruce and other regular trees that we didn't collect heights for (mainly in plots 7-27, in the non-free subplots).
##'      \item 2010: Additional spruce and other regular trees that we didn't collect heights for (mainly in plots 7-27, in non-free subplots)
##'   }
##' }
"pp_raw"
