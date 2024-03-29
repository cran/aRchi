% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/TreeVolume.R
\docType{methods}
\name{TreeVolume}
\alias{TreeVolume}
\alias{TreeVolume,aRchi-method}
\title{Tree volume estimation of the woody part}
\usage{
TreeVolume(aRchi, level = "Tree")

\S4method{TreeVolume}{aRchi}(aRchi, level = "Tree")
}
\arguments{
\item{aRchi}{an object of class aRchi with at least a QSM}

\item{level}{character. The level at which the wood volume is computed. \code{Tree}, \code{branching_order} or \code{Axis}.}
}
\value{
a numeric or data.table. The wood volume in m3 at the requested level
}
\description{
Compute the tree wood volume at different level of organization
}
\examples{
# Read an aRchi file with at least a QSM
file=system.file("extdata","Tree_1_aRchi.aRchi",package = "aRchi")
Tree1_aRchi=read_aRchi(file)
# Compute the whole tree wood biomass.
TreeVolume(Tree1_aRchi)
}
