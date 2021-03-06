% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/occurrence.R
\name{occurrence}
\alias{occurrence}
\title{Taxa occurrence}
\usage{
occurrence(states, type = c("any", "only", "all"), taxa = NULL)
}
\arguments{
\item{states}{a character vector with one or more state abbreviations
following. See notes for abbreviations.}

\item{type}{type of matching to be used. \code{any} will return the taxa that
occur in any of the passed \code{states}. \code{only} matches taxa that
occur only in all provided (no more, no less) \code{states} and \code{all} matches taxa that
occur at least in all \code{states} passed. See examples.}

\item{taxa}{optional character vector to match against the states}
}
\value{
a data frame
}
\description{
Find the taxa that occur in a given state of Brazil.
}
\note{
List of abbreviations: \url{http://en.wikipedia.org/wiki/States_of_Brazil}
}
\examples{
\dontrun{
occ.any <- occurrence(c("SP", "BA", "MG"), type = "any")
occ.only <- occurrence(c("SP", "BA", "MG"), type = "only")
occ.all <- occurrence(c("SP", "BA", "MG"), type = "all")
occ.taxa <- occurrence(c("SP", "BA", "MG"), type = "all", taxa = lower.taxa("Myrcia"))

head(occ.any)
head(occ.only)
head(occ.all)
head(occ.taxa)
}
}

