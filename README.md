# remverse <img src="man/figures/logo.png" align="right" width="150"/>

<!-- badges: start -->
<!-- [![CRAN status](https://www.r-pkg.org/badges/version/remverse)](https://CRAN.R-project.org/package=remverse) -->
[![R-CMD-check](https://github.com/TilburgNetworkGroup/remverse/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/TilburgNetworkGroup/remverse/actions/workflows/R-CMD-check.yaml)
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

A collection of open-source R packages for the analysis of relational event history data.

## Overview

The `remverse` package loads an ensemble of R packages for working with Relational Event Histories (REH): preprocessing event sequences, computing network statistics, and estimating relational event models.

### Core packages

| Package | Description |
|---------|-------------|
| [`remify`](https://github.com/TilburgNetworkGroup/remify) | Transforms raw event history data into the REH format used across the ecosystem |
| [`remstats`](https://github.com/TilburgNetworkGroup/remstats) | Computes network statistics and organizes them into structures suitable for model estimation |
| [`remstimate`](https://github.com/TilburgNetworkGroup/remstimate) | Estimation, model selection, and diagnostics for relational event models |

### Planned additions

| Package | Description |
|---------|-------------|
| [`durem`](https://github.com/TilburgNetworkGroup/durem) | Duration-weighted relational event modeling |
| `rembrandt` | Visualization and descriptive analysis of relational event histories |
| [`bremory`](https://github.com/TilburgNetworkGroup/bremory) | Semiparametric methods for detecting memory in event sequences |
| `remdata` | Curated relational event history datasets |
| [`remulate`](https://github.com/TilburgNetworkGroup/remulate) | Simulation of relational event history data |

## Installation

Install the development version from GitHub:

```r
# install.packages("devtools")
devtools::install_github("TilburgNetworkGroup/remverse")
```

## Example

```r
library(remverse)

# preprocess event history
reh <- remify(history, model = "tie", directed = TRUE)

# compute statistics for the tie model
stats <- remstats(reh, tie_effects = ~ inertia() + reciprocity())

# estimate the model
fit <- remstimate(reh, stats, method = "MLE")

# inspect results
summary(fit)

# perform diagnostics check
diag_fit <- diagnostics(fit, reh = reh, stats = stats)
plot(diag_fit)
```

## NEWS

See the [NEWS](NEWS.md) file for the latest changes.
