% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/source_GINtoSPN.R
\name{new_smallBiochemical}
\alias{new_smallBiochemical}
\title{Generate the texts of a place node in "Small Biochemical" style of mEPN}
\usage{
new_smallBiochemical(id, text.show)
}
\arguments{
\item{id}{The id of the node. Should be in the format of "n" plus a number, for example "n1", "n2"...}

\item{text.show}{The text.show parameter which will be passed to function "basic_node". Can be the name of the chemical.}
}
\value{
A character string of a "Small Chemical" node.
}
\description{
Generate the texts of a place node in "Small Biochemical" style of mEPN. The text.show parameter does not affect the format, and can be filled with the chemical's id.
}
