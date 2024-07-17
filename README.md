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
Let's start from building a Petri net model for neurofibroma. First we get the gene list of neurofibroma from hpo gene set, compiled by MSigDB. Please install package "ActivePathway" for reading the gmt file. The gmt file can be found in the "fileReproduce" folder.
```
install.packages("ActivePathways")
library(ActivePathways)
hpo.gs<-read.GMT("pathTo/c5.hpo.v2023.2.Hs.symbols.gmt.txt")
hpo.list<-list()
for(i in 1:length(hpo.gs)){
  hpo.list[[i]]<-hpo.gs[[i]]$genes
  names(hpo.list)[i]<-hpo.gs[[i]]$id
}
nf.gs<-hpo.list[['HP_NEUROFIBROMA']]
```
Then we can infer the topological network from GIN:
```
# Infer nodes based on the topological network
nf.node<-generate_node_collection(nf.gs,graph,cdglist,num_cores = 6)
# Clean the node collection
nf.node<-rm_unrelatedNodes(nf.gs,nf.node,graph)
# Add parent nodes for intermediate nodes
nf.node<-add_parentNodes(nf.node,graph = graph)
# Number of nodes
length(nf.node) #91
# Build the sub-graph
g.pw<-induced_subgraph(graph,nf.node)
g.pw<-igraph::simplify(g.pw,edge.attr.comb = randomSelect)
```
The igraph object "g.pw" is the induced molecular interaction network for neurofibroma genes. Now let's plot the network:
```
g.pw<-adjustNode_color_size(g.pw,nf.node)
layout.pw<-layout_with_fr(g.pw)
plot(g.pw, layout = layout.pw,
     vertex.label.cex = 0.5,edge.arrow.size = 0.5)
```
The network should look similar to this:
<img width="553" alt="image" src="https://github.com/user-attachments/assets/aa4614ac-04e3-413c-a81e-374fb63966c3">

