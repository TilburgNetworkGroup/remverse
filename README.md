# remverse (Version: 0.0)
# A collection of open source R packages focussed on the analysis of relational event history data

### Table of contents
* [About the package](#about-the-package)
* [Programming Languages](#programming-languages)
* [Installing the package](#installing-the-package)
* [NEWS](#news)

### About the package
The `remverse` package loads an ensemble of R packages useful for several purposes in the analysis of a Relational Event History (REH). These packages are (at the moment):

| Core package name | Short description |
| ------------- | ------------- |
|`rembrandt`| Functions for visualization and descriptive (quantitative and qualitative) analysis of a REH|
| [`remstats`](https://github.com/TilburgNetworkGroup/remstats)  | Computation of statistics (network-based and not) which are finally arranged within a data structure that is suitable for the other core packages |
| [`remstimate`](https://github.com/TilburgNetworkGroup/remstimate) | Functions for the optimization of the likelihood, for the estimation of parameters in a bayesian fashion and other functions that are useful for handling the data structure of a REH.  |
| `bremory` (`remory`?)  | A semiparametric method to inquire about the presence of memory in a REH |
| `remify` | A package that transforms REH data from other packages (hence: in other formats) or other sources to a REH structure that can be used in our packages (and, potentially, vice versa) |
| `remdata` | A package with REH datasets |
| `remulate` | Package to generate/simulate/emulate REH data |
| ... | ... |

The probabilistic model that is mainly considered is the Relational Event Model presented by Carter T. Butts (2008). Variations of it might be allowed, specifically by means of `remstimate`.

### Programming Languages 
The package contains code written in:
* R (>= 4.0.0)
* Rcpp (>= 1.0.4.6) and RcppArmadillo (>= 0.9.860.2.0)
* C++11 (Compiler Version: GCC-8.1.0)

 _(languages used across all the minor packages)_
	
### Installing the package 
To install the package in R using `devtools` _(when available as an R package)_:

```
library(devtools)
install_github("TilburgNetworkGroup/remverse")

# load the package
library(remverse)
```

### NEWS
See [NEWS](NEWS.md) file for the most up to date changes.






