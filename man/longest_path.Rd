% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/source_GINtoSPN.R
\name{longest_path}
\alias{longest_path}
\title{Find the longest path in an igraph object}
\usage{
longest_path(graph, source, target)
}
\arguments{
\item{graph}{An igraph object.}

\item{source}{The name of the source node.}

\item{target}{The name of the target node.}
}
\value{
An edge list containing the longest path from a source node to a target node.
}
\description{
Find the longest paths in an igraph object for two nodes.
}
