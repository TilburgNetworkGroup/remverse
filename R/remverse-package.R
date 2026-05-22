#' remverse: A Collection of R Packages for Relational Event Modeling
#'
#' The remverse package loads an ensemble of R packages for working with
#' Relational Event Histories (REH): preprocessing event sequences
#' (\pkg{remify}), computing network statistics (\pkg{remstats}), and
#' estimating relational event models (\pkg{remstimate}).
#'
#' @examples
#' library(remverse)
#'
#' # Load example data
#' data("randomREHsmall")
#'
#' # Preprocess
#' reh <- remify(edgelist = randomREHsmall$edgelist,
#'               model = "tie",
#'               directed = TRUE)
#'
#' # Compute statistics
#' stats <- remstats(reh,
#'                   tie_effects = ~ inertia(scaling="std") + reciprocity(scaling="std"),
#'                   start = 10)
#'
#' # Fit model
#' fit <- remstimate(reh, stats)
#' summary(fit)
#'
#' # Check diagnostics
#' diag_fit <- diagnostics(fit, reh, stats)
#' print(diag_fit)
#' plot(fit, reh, diag_fit)
#'
"_PACKAGE"
