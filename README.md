# GINtoSPN
A R package which enables automatic construction of signaling Petri nets
## Installation
The package is written in R. Installation of the package from github:
```
library("devtools")
install_github("https://github.com/BIGchixu/GINtoSPN")
library(GINtoSPN)
```
The package requires four packages: igraph, foreach, and doParallel. Installation of these packages:
```
install.packages("igraph")
install.packages("foreach")
install.packages("doParallel")
```
The package also requires several precompiled files, including GIN, gene regulatory network, and a coding gene list. These files can be found in the "data" folder. Download the files and load into memory:
```
load("pathTo/cdglist.rda")
load("pathTo/graph.grn.rda")
load("pathTo/graph.rda")
```
## A simple tutorial/example
Let's start from building a Petri net model for neurofibroma. 
