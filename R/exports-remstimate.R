# Generated with R/update.R: do not edit by hand

#' @title aic
#'
#' @name aic
#' @importFrom remstimate aic
#' @inherit remstimate::aic
#' @export aic
aic <- function(object, ...) {
  remstimate::aic(object = object, ... = ...)
}

#' @title aicc
#'
#' @name aicc
#' @importFrom remstimate aicc
#' @inherit remstimate::aicc
#' @export aicc
aicc <- function(object, ...) {
  remstimate::aicc(object = object, ... = ...)
}

#' @title bic
#'
#' @name bic
#' @importFrom remstimate bic
#' @inherit remstimate::bic
#' @export bic
bic <- function(object, ...) {
  remstimate::bic(object = object, ... = ...)
}

#' @title diagnostics
#'
#' @name diagnostics
#' @importFrom remstimate diagnostics
#' @inherit remstimate::diagnostics
#' @export diagnostics
diagnostics <- function(object, reh, stats, ...) {
  remstimate::diagnostics(object = object, reh = reh, stats = stats, ... = ...)
}

#' @title remstimate
#'
#' @name remstimate
#' @importFrom remstimate remstimate
#' @inherit remstimate::remstimate
#' @export remstimate
remstimate <- function(reh, stats, method = c("MLE", "GDADAMAX", "BSIR", "HMC"), ncores = attr(reh, "ncores"), prior = NULL, nsim = 1000L, nchains = 1L, burnin = 500L, thin = 10L, init = NULL, epochs = 1000L, L = 50L, epsilon = ifelse(method == "GDADAMAX", 0.001, 0.002), seed = NULL, WAIC = FALSE, silent = TRUE, ...) {
  remstimate::remstimate(reh = reh, stats = stats, method = method, ncores = ncores, prior = prior, nsim = nsim, nchains = nchains, burnin = burnin, thin = thin, init = init, epochs = epochs, L = L, epsilon = epsilon, seed = seed, WAIC = WAIC, silent = silent, ... = ...)
}

#' @title waic
#'
#' @name waic
#' @importFrom remstimate waic
#' @inherit remstimate::waic
#' @export waic
waic <- function(object, ...) {
  remstimate::waic(object = object, ... = ...)
}

