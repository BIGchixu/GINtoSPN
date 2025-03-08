% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/source_GINtoSPN.R
\name{create_neighbor_df_epoch}
\alias{create_neighbor_df_epoch}
\title{Create a dataframe containing the neighbor nodes of a gene or chemical.}
\usage{
create_neighbor_df_epoch(i, tmp.gs, graph)
}
\arguments{
\item{i}{The index of the gene/chemical in tmp.gs}

\item{tmp.gs}{A vector of genes/chemicals}

\item{graph}{The igraph object of Global Integrative Network (GIN).}
}
\value{
A dataframe with two columns. The first column is the given gene. The second column is the downstream neighbors.
}
\description{
An epoch to create a dataframe of a gene/chemical and its downstream neighbors by calling the function "neighbors" from package igraph. The mode is set to "out" to get the downstream neighbors only.
}
