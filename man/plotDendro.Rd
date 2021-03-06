% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotDendro.R
\name{plotDendro}
\alias{plotDendro}
\title{Plots dendrogram of `findMarkers` output}
\usage{
plotDendro(decisionTree, classLabel = NULL, addSensPrec = FALSE,
  leafSize = 24, boxSize = 7, boxColor = "black")
}
\arguments{
\item{decisionTree}{List object. The output of `celda::findMarkers`.}

\item{classLabel}{A character value. The name of a label to which draw
the path and rules. If NULL (default), the rules for every cluster is shown.}

\item{addSensPrec}{Logical. Print training sensitivities and precisions
for each cluster below leaf label? Default is FALSE.}

\item{leafSize}{A numeric value. Size of text below each leaf. Default is 24.}

\item{boxSize}{A numeric value. Size of rule labels. Default is 7.}

\item{boxColor}{A character value. Color of rule labels. Default is `black`.}
}
\value{
A ggplot2 object
}
\description{
Generates a dendrogram of the rules and performance
(optional) of the decision tree generates by `findMarkers`.
}
\examples{
library(M3DExampleData)
counts <- M3DExampleData::Mmus_example_list$data
# Subset 500 genes for fast clustering
counts <- as.matrix(counts[1501:2000, ])
# Cluster genes ans samples each into 10 modules
cm <- celda_CG(counts = counts, L = 10, K = 5, verbose = FALSE)
# Get features matrix and cluster assignments
factorized <- factorizeMatrix(counts, cm)
features <- factorized$proportions$cell
class <- clusters(cm)$z
# Generate Decision Tree
decTree <- findMarkers(features,
    class,
    oneoffMetric = "modified F1",
    threshold = 1,
    consecutiveOneoff = FALSE)

# Plot dendrogram
plotDendro(decTree)
}
