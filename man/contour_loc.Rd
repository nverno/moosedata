% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{contour_loc}
\alias{contour_loc}
\title{GPS locations of contour data.}
\format{A data frame (data.table) with 512 and 9 variables.
\itemize{
  \item STPACE: Number of paces along the contour.
  \item LABEL:  Notes
  \item lng: Longitude
  \item lat: Latitude
  \item DATE: Date the location data was collected.
  \item INTERP: Logical value, whether the location was interpolated or not.
  \item VALUE: Name of contour
  \item contLab: HTML Label (used with leaflet for example)
  \item id: Unique identifier of rows (since it is a data.table)
}}
\usage{
contour_loc
}
\description{
A dataset containing locations of contour data.
}
\keyword{datasets}

