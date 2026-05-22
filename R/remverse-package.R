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
#' data("edgelist0")
#' data("edgelist0_actors")
#'
#' # Preprocess data
#' reh <- remify(edgelist = edgelist0,
#'               model = "tie",
#'               directed = TRUE,
#'               event_type = "setting",
#'               extend_riskset_by_type = TRUE)
#'
#' # Compute statistics
#' stats <- remstats(reh,
#'                   tie_effects = ~ inertia(scaling="std", consider_type = "ignore") +
#'                     reciprocity(scaling="std", consider_type = "separate") +
#'                     same("job", attr_actors = edgelist0_actors),
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
