% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/source_GINtoSPN.R
\name{checkNodeExist}
\alias{checkNodeExist}
\title{Check whether the node id exists in a graphml list}
\usage{
checkNodeExist(id, graphml)
}
\arguments{
\item{id}{The id of the node. Should be in the format of "n" plus a number, for example "n1", "n2"...}

\item{graphml}{The graphml list.}
}
\value{
Logical value, TRUE or FALSE
}
\description{
Check whether a given node id already exists in a graphml list
}
