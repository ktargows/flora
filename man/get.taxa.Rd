% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get.taxa.R
\name{get.taxa}
\alias{get.taxa}
\title{Get plant taxonomical and distribution data}
\usage{
get.taxa(taxa, replace.synonyms = TRUE, suggest.names = TRUE,
  life.form = FALSE, habitat = FALSE, vernacular = FALSE,
  states = FALSE, establishment = FALSE, drop = c("authorship", "genus",
  "specific.epiteth", "infra.epiteth", "name.status"),
  suggestion.distance = 0.9, parse = FALSE)
}
\arguments{
\item{taxa}{a character vector containing one or more taxa, without authors 
see \code{\link{remove.authors}} if you have a list with authorities}

\item{replace.synonyms}{should the function automatically replace synonyms?}

\item{suggest.names}{should the function try to correct misspelled names?}

\item{life.form}{include the life form of the taxon?}

\item{habitat}{include the habitat of the taxon?}

\item{vernacular}{include vernacular names and localities?}

\item{states}{include occurrence data?}

\item{establishment}{include the establishment type (native, cultivated or 
naturalized)?}

\item{drop}{NULL or character vector with names of columns with taxonomic
information to be removed from the returned data frame. Available names: 
"id", "scientific.name", "accepted.name", "family", "genus",
"specific.epiteth", "infra.epiteth", "taxon.rank", "authorship",
"taxon.status", "name.status", "threat.status", and "search.str".}

\item{suggestion.distance}{a value between 0 and 1 indicanting how conservative the
name suggestion algorithm should be. Values closer to 1 are very
conservative. Be very careful, lower values can give wrong suggestions.}

\item{parse}{Parse names through the GBIF parser to remove authors?}
}
\value{
a data frame
}
\description{
This function collects taxonomic information and distribution from the
Brazilian Flora Checklist. Synonyms and misspelled names are resolved 
automatically. Results can be combined with life form, habitat, vernacular
name, and occurrence data.
}
\details{
The returned data frame will contain a variable number of rows and 
  columns depending on how the function was called. For instance, since there
  might be more than one vernacular name for each taxon, some rows
  will be duplicated if \code{vernacular} is set to \code{TRUE}. All misspelled taxa
  are automatically corrected if the function can come up with a reasonable
  guess for the name. Conservation status follows the IUCN nomenclature.
}
\examples{
\dontrun{
data(plants)
get.taxa(plants)
get.taxa(plants, life.form = TRUE, establishment = TRUE)
}
}

