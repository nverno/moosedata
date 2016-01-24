##' Permanent plot data in long format.
##'
##' A dataset containing tree data collected from the 80's to
##' until most recently in 2011.  The cleaned version in long format.
##' Some of the variables have been dropped from the raw version.
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
##'   \item CLASS: Type of sampling location:
##'      \item P: Permanent Plot
##'      \item : Permanent Plot
##' }
"pp"

##' Transect plot data in raw format (wide).
##'
##' A dataset containing tree data collected from the 80's to
##' until most recently in 2011.
##'
##' @format A data frame with 7648 rows and 115 variables.
##' \itemize{
##'   \item TRAN: Transect name
##'   \item TPLOT:  Transect plot number (increasing numbers with elevation)
##'   \item TAG: Tree tag number
##'   \item SPEC: Tree species abbreviation
##'   \item YRTAG: Year the tree was tagged
##' }
"tp_raw"

##' Transect plot data in long format.
##'
##' A dataset containing tree data collected from the 80's to
##' until most recently in 2011.  The cleaned version in long format.
##' Some of the variables have been dropped from the raw version
##' 
##' @format A data frame with 7648 rows and 115 variables.
##' \itemize{
##'   \item TRAN: Transect name
##'   \item TPLOT:  Transect plot number (increasing numbers with elevation)
##'   \item TAG: Tree tag number
##'   \item SPEC: Tree species abbreviation
##'   \item YRTAG: Year the tree was tagged
##' }
"tp"

##' GPS locations of permanent plots, transect plots, contours and
##' other random locations of data collected at or near Mt. Moosilauke.
##'
##' A dataset containing locations of collected data.  Note that this data
##' has been separated into separate datasets for permanent plots, transects,
##' contours, and other locations since they have different pertinent information.
##'
##' @format A data frame (data.table) with 512 and 12 variables.
##' \itemize{
##'   \item TPLOT:  Transect plot number (increasing numbers with elevation)
##'   \item STPACE: Number of paces along the contour.
##'   \item LABEL:  Notes
##'   \item lng: Longitude
##'   \item lat: Latitude
##'   \item DATE: Date the location data was collected.
##'   \item POINT_X: Longitude (interpolated or collected)
##'   \item POINT_Y: Latitude (interpolated or collected)
##'   \item INTERP: Logical value, whether the location was interpolated or not.
##'   \item DEMSLOPE: Slope of permanent plot
##'   \item TYPE: Type of location (permanent plot, transect, etc.)
##'   \item VALUE: Value depending on type of location (plot number for transect/permanent plot)
##' }
"locations"

##' GPS locations of contour data.
##'
##' A dataset containing locations of contour data.
##'
##' @format A data frame (data.table) with 512 and 9 variables.
##' \itemize{
##'   \item STPACE: Number of paces along the contour.
##'   \item LABEL:  Notes
##'   \item lng: Longitude
##'   \item lat: Latitude
##'   \item DATE: Date the location data was collected.
##'   \item INTERP: Logical value, whether the location was interpolated or not.
##'   \item VALUE: Name of contour
##'   \item contLab: HTML Label (used with leaflet for example)
##'   \item id: Unique identifier of rows (since it is a data.table)
##' }
"contour_loc"

##' GPS locations of permananet plot locations.
##'
##' A dataset containing locations of permanent plot data.
##'
##' @format A data frame (data.table) with 27 rows and 14 variables.
##' \itemize{
##'   \item PPLOT:  Permanent plot number
##'   \item lng: Longitude
##'   \item lat: Latitude
##'   \item DATE: Date the location data was collected.
##'   \item DEMSLOPE: Slope of permanent plot
##'   \item ELEVCL: Elevaction class of plot
##'   \item ASPCL: Aspect class of plot
##'   \item SOILCL: Soil class of plot
##'   \item ELEV: Elevation of plot (meters)
##'   \item ASP: Aspect of plot (degrees)
##'   \item LABEL:  Additional notes
##'   \item ppLab: HTML Label (used with leaflet for example)
##'   \item id: Unique identifier of rows (since it is a data.table)
##' }
"pp_loc"

##' GPS locations of transect plot locations.
##'
##' A dataset containing locations of transect plot data.
##'
##' @format A data frame (data.table) with 237 rows and 13 variables.
##' \itemize{
##'   \item TRAN:  Transect name
##'   \item TPLOT:  Transect plot number
##'   \item lng: Longitude
##'   \item lat: Latitude
##'   \item DATE: Date the location data was collected.
##'   \item INTERP: Logical value, whether location was interpolated.
##'   \item ELEVCL: Elevaction class of plot
##'   \item ASPCL: Aspect class of plot
##'   \item ELEV: Elevation of plot (meters)
##'   \item ASP: Aspect of plot (degrees)
##'   \item LABEL:  Additional notes
##'   \item tpLab: HTML Label (used with leaflet for example)
##'   \item id: Unique identifier of rows (since it is a data.table)
##' }
"tp_loc"

##' GPS locations of other data locations.
##'
##' A dataset containing locations of other (random/unsure) data.
##'
##' @format A data frame (data.table) with 112 rows and 6 variables.
##' \itemize{
##'   \item LABEL:  Notes about location
##'   \item lng: Longitude
##'   \item lat: Latitude
##'   \item DATE: Date the location data was collected.
##'   \item otherLab: HTML Label (used with leaflet for example)
##'   \item id: Unique identifier of rows (since it is a data.table)
##' }
"other_loc"
