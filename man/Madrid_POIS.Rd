% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/idealista18.R
\docType{data}
\name{Madrid_POIS}
\alias{Madrid_POIS}
\title{Places of interest in Madrid}
\format{
A list with two objects:
\describe{
  \item{City_Center}{Coordinates of Madrid's city center}
  \item{Castellana}{Paseo de la Castellana: Coordinates of Paseo de la Castellana street)}
  }

An object of class \code{list} of length 3.
}
\source{
Idealista (https://www.idealista.com/)
}
\usage{
data(Madrid_POIS)

Madrid_POIS
}
\description{
Geospatial references for places of interest in Madrid
}
\examples{
 library(idealista18)
 data(Madrid_POIS)
 summary(Madrid_POIS)
}
\keyword{datasets}
