% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LeonardoRatio.R
\docType{methods}
\name{LeonardoRatio}
\alias{LeonardoRatio}
\alias{LeonardoRatio,aRchi-method}
\title{Compute Leonardo's ratio}
\usage{
LeonardoRatio(aRchi, level = "Tree", position = 10)

\S4method{LeonardoRatio}{aRchi}(aRchi, level = "Tree", position = 10)
}
\arguments{
\item{aRchi}{an object of class aRchi with at least a QSM and the Nodes table (see function \code{\link{Make_Node}})}

\item{level}{characters. At which level R_ratio has to be estimated. \code{Node} for node level, \code{Axis} for the axis level, \code{branching_order} for branch order level and \code{Tree} for tree level (default).}

\item{position}{At which position from the node R_ratio had to be estimated. Either a numeric or a character. Use a numeric multiple of ten to select the distance from the node in cm where R ratio has to be estimated (e.g 10 for 10cm from the node). Use the \% sign after a multiple of ten to select the distance from the node in percentage of the length of the parent and daughters segments (e.g 50\% for an estimation at mid-length of the segments). Note that 0 is accepted and correspond to the closest position from the node.}
}
\value{
Data.table of the summary of R_ratio for the selected level.
}
\description{
Compute from an object of class aRchi the Leonardo's ratio (i.e R_ratio) at node, axis, branch order or tree level.
}
\details{
Details for Leonardo Da Vinci's ratio calculation are given in the details part of function \code{\link{Make_Node}}.
}
\examples{
# Read an aRchifile with a QSM and node tables.
file=system.file("extdata","Tree_1_aRchi.aRchi",package = "aRchi")
Tree1_aRchi=read_aRchi(file)
# Leonardo'ratio at the branching order level estimated at midlength of the segments
LeonardoRatio(Tree1_aRchi,level="Tree", position="50\%")
# Leonardo'ratio at the node level estimated at 30 cm from the node
LeonardoRatio(Tree1_aRchi,level="Node", position=30)
}
\seealso{
\code{\link{Make_Node}} for node metrics estimation; \code{\link{WBEparameters}} to estimates WBE parameters at different level;
}
