##' Permanent plot data in raw format (wide).
##'
##' A dataset containing tree data collected from the 80's to
##' until most recently in 2011.
##'
##' @format A data frame with 12981 rows and 160 variables.
##' \itemize{
##'   \item PPLOT: Permanent plot number
##'   \item SPLOT: Subplot number
##'   \item TAG: Tree tag number
##'   \item SPEC: Tree species abbreviation
##'   \item CLASS: ...
##' }
"pp_raw"

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
##'   \item TAG: Tree tag number
##'   \item SPEC: Tree species abbreviation
##'   \item CLASS: ...
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
