% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/source_GINtoSPN.R
\name{generate_mut_graphml}
\alias{generate_mut_graphml}
\title{Delete the transitions and edges associated with a mutated gene}
\usage{
generate_mut_graphml(mutGene, result)
}
\arguments{
\item{mutGene}{A gene name, which is supposed to be functionally lost in the system.}

\item{result}{A list of two elements. First is a GraphML list. Second is the metainfo (a dataframe).}
}
\value{
A list of two elements. First is a GraphML list without transitions and arcs related to a mutated gene. Second is the metainfo (a dataframe).
}
\description{
Simulate the effects of functional lost of a mutated gene by deleting the associated transitions and arcs. Should be clear of the gene's function and its direct impact. Use this function under professional guidances of biological meanings.
}
