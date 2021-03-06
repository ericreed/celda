[![Build Status](https://travis-ci.org/campbio/celda.svg?branch=master)](https://travis-ci.org/campbio/celda)
[![Coverage Status](https://coveralls.io/repos/github/campbio/celda/badge.svg?branch=master)](https://coveralls.io/github/campbio/celda?branch=master)

# celda: CEllular Latent Dirichlet Allocation

"celda" stands for "**CE**llular **L**atent **D**irichlet **A**llocation". It is a suite of Bayesian hierarchical models and supporting functions to perform gene and cell clustering for count data generated by single cell RNA-seq platforms. This algorithm is an extension of the Latent Dirichlet Allocation (LDA) topic modeling framework that has been popular in text mining applications. Celda has advantages over other clustering frameworks:

1. Celda can simultaneously cluster genes into transcriptional states and cells into subpopulations
2. Celda uses count-based Dirichlet-multinomial distributions so no additional normalization is required for 3' DGE single cell RNA-seq
3. These types of models have shown good performance with sparse data.
4. **Celda now includes DecontX, a computational algorithm for decontamination of droplet based scRNA-seq data.**


## Installation Instructions

To install the latest stable release of **celda** from [Bioconductor](http://bioconductor.org/packages/celda/) (requires R version >= 3.6):

```
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("celda")
```

To install the development version (R >= 3.6) of **celda** from GitHub using `devtools`:
```
library(devtools)
install_github("campbio/celda")
```

For `R-3.5` users, please install from the `R_3_5` branch. This version of **celda** is identical to the most recent release of **celda** (`master` branch) except it also works on `R-3.5`. **NOTE:** This branch is no longer updated. Please use `R-3.6` versions.
```
library(devtools)
install_github("campbio/celda@R_3_5")
```

There has recently been a major update to variable/function names in the **celda** package. For backward compatibility with results (`celda_CG` and `celda_list` objects) generated from older versions of **celda**, please install from the mirror branch `20190409_master` which is the release before package reformatting:
```
library(devtools)
install_github("campbio/celda@20190409_master")
```

**NOTE** On OSX, `devtools::install_github()` requires installation of **libgit2.** This can be installed via homebrew:
```
brew install libgit2
```
**NOTE** If you are trying to install **celda** using Rstudio and get this error: `could not find tools necessary to compile a package`, you can try this:
```
options(buildtools.check = function(action) TRUE)
```

## Examples and vignettes

The vignette in HTML format showing how to use **celda** is available on Bioconductor [here](http://bioconductor.org/packages/release/bioc/vignettes/celda/inst/doc/celda-analysis.html).

Example vignette of doing single-cell RNA-seq data decontamination using DecontX is available [here](http://bioconductor.org/packages/release/bioc/vignettes/celda/inst/doc/DecontX-analysis.html).

## For developers
Check out our [Wiki](https://github.com/campbio/celda/wiki) for [coding style guide](https://github.com/campbio/celda/wiki/Celda-Development-Coding-Style-Guide) if you want to contribute!
