% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/source_GINtoSPN.R
\name{get_path_info}
\alias{get_path_info}
\title{Extend the path.}
\usage{
get_path_info(previous.path, tmp.examine)
}
\arguments{
\item{previous.path}{A dataframe containing the paths' info before extension.}

\item{tmp.examine}{A dataframe containing the starting and ending nodes for extension.}
}
\value{
A list of two dataframes. The first one contains the intermediate nodes in the second column. The second one contains genes/chemicals/complexes in the second column.
}
\description{
The dataframe of paths are checked for the nodes' types and split into two dataframes which contains the next nodes for extension or the ending nodes of the paths. This function merge the original paths and the extensions to grow the path.
}
