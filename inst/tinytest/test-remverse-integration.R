## Integration tests for remverse
##
## Purpose: verify that the full pipeline
##   remify() -> remstats() -> remstimate() -> diagnostics() -> plot()
## works end-to-end using unqualified function calls (as re-exported by
## remverse), rather than package-qualified remify::remify() etc.
##
## These tests are intentionally NOT exhaustive over every scenario — those
## are covered in the individual packages. The four tests here cover four
## distinct code paths that only interact at the package interfaces:
##
##   1. tie  model, directed,   interval likelihood, MLE
##   2. actor model, directed,   interval likelihood, MLE
##   3. tie  model, undirected,  ordinal  likelihood, HMC
##   4. actor model, directed,   ordinal  likelihood, HMC
##
## Note: directed = FALSE is not supported for the actor-oriented model
## (remify errors); undirected events only apply to the tie-oriented model.

library(tinytest)

# ── helpers ───────────────────────────────────────────────────────────────────

set_seed <- 23929L

# Run expr inside a null graphics device so plot() calls produce no output.
with_null_dev <- function(expr) {
  pdf(nullfile())
  on.exit(dev.off())
  force(expr)
}

# ── shared data ───────────────────────────────────────────────────────────────

data(tie_data, package = "remstimate")
data(ao_data,  package = "remstimate")

# Floor times to create simultaneous events (mirrors the individual-package tests)
tie_data$edgelist$time <- floor(tie_data$edgelist$time)
ao_data$edgelist$time  <- floor(ao_data$edgelist$time)
ao_data$edgelist$time[seq(5, 95, by = 5)] <-
  ao_data$edgelist$time[seq(5, 95, by = 5) - 1]

# ── Test 1: tie model | directed | interval likelihood | MLE ──────────────────

tie_reh   <- remify(edgelist = tie_data$edgelist, model = "tie")
tie_model <- ~ 1 + remstats::inertia() + remstats::reciprocity()
tie_stats <- remstats(reh = tie_reh, tie_effects = tie_model)
tie_fit   <- remstimate(reh = tie_reh, stats = tie_stats,
                        ncores = 1L, method = "MLE")
tie_diag  <- diagnostics(object = tie_fit, reh = tie_reh, stats = tie_stats)

expect_inherits(tie_fit,  "remstimate",               info = "tie MLE: fit class")
expect_inherits(tie_diag, c("diagnostics","remstimate"), info = "tie MLE: diag class")
expect_identical(attr(tie_fit, "model"),    "tie",    info = "tie MLE: model attr")
expect_false(attr(tie_fit, "ordinal"),                info = "tie MLE: not ordinal")
expect_identical(attr(tie_fit, "approach"), "Frequentist", info = "tie MLE: approach")
expect_silent(with_null_dev(plot(tie_diag)), info = "tie MLE: plot(diag)")

# ── Test 2: actor model | directed | interval likelihood | MLE ────────────────

rate_model   <- ~ 1 + remstats::indegreeSender()
choice_model <- ~ remstats::inertia() + remstats::reciprocity()

ao_reh    <- remify(edgelist = ao_data$edgelist, model = "actor")
ao_stats  <- remstats(reh = ao_reh,
                      sender_effects   = rate_model,
                      receiver_effects = choice_model)
ao_fit    <- remstimate(reh = ao_reh, stats = ao_stats,
                        ncores = 1L, method = "MLE")
ao_diag   <- diagnostics(object = ao_fit, reh = ao_reh, stats = ao_stats)

expect_inherits(ao_fit,  "remstimate",                info = "actor MLE: fit class")
expect_inherits(ao_diag, c("diagnostics","remstimate"), info = "actor MLE: diag class")
expect_identical(attr(ao_fit, "model"),    "actor",   info = "actor MLE: model attr")
expect_false(attr(ao_fit, "ordinal"),                 info = "actor MLE: not ordinal")
expect_identical(attr(ao_fit, "approach"), "Frequentist", info = "actor MLE: approach")
expect_silent(with_null_dev(plot(ao_diag)), info = "actor MLE: plot(diag)")

# ── Test 3: tie model | undirected | ordinal likelihood | HMC ─────────────────
# directed = FALSE is only valid for the tie-oriented model.
# reciprocity() is not defined for undirected events; use inertia() only.

tie_ud_reh   <- remify(edgelist = tie_data$edgelist, model = "tie",
                       directed = FALSE, ordinal = TRUE)
tie_ud_model <- ~ 1 + remstats::inertia()
tie_ud_stats <- remstats(reh = tie_ud_reh, tie_effects = tie_ud_model)
tie_ud_fit   <- remstimate(reh = tie_ud_reh, stats = tie_ud_stats,
                           ncores  = 1L,  method  = "HMC",
                           nchains = 1L,  nsim    = 10L,
                           burnin  = 5L,  seed    = set_seed)
tie_ud_diag  <- diagnostics(object = tie_ud_fit,
                             reh = tie_ud_reh, stats = tie_ud_stats)

expect_inherits(tie_ud_fit,  "remstimate",                info = "tie HMC: fit class")
expect_inherits(tie_ud_diag, c("diagnostics","remstimate"), info = "tie HMC: diag class")
expect_identical(attr(tie_ud_fit, "model"),    "tie",    info = "tie HMC: model attr")
expect_true(attr(tie_ud_fit, "ordinal"),                 info = "tie HMC: ordinal")
expect_identical(attr(tie_ud_fit, "approach"), "Bayesian", info = "tie HMC: approach")
# Pass object so plot() can also produce posterior (plot 3) and trace (plot 4)
expect_silent(with_null_dev(plot(tie_ud_diag, object = tie_ud_fit)),
              info = "tie HMC: plot(diag, object)")

# ── Test 4: actor model | directed | ordinal likelihood | HMC ─────────────────
# directed = FALSE is not supported for the actor-oriented model.
# This test covers the ordinal + HMC path for aomstats.

ao_ord_reh   <- remify(edgelist = ao_data$edgelist, model = "actor",
                       ordinal = TRUE)
ao_ord_stats <- remstats(reh = ao_ord_reh,
                         sender_effects   = rate_model,
                         receiver_effects = choice_model)
ao_ord_fit   <- remstimate(reh = ao_ord_reh, stats = ao_ord_stats,
                           ncores  = 1L,  method  = "HMC",
                           nchains = 1L,  nsim    = 10L,
                           burnin  = 5L,  seed    = set_seed)
ao_ord_diag  <- diagnostics(object = ao_ord_fit,
                             reh = ao_ord_reh, stats = ao_ord_stats)

expect_inherits(ao_ord_fit,  "remstimate",                info = "actor HMC: fit class")
expect_inherits(ao_ord_diag, c("diagnostics","remstimate"), info = "actor HMC: diag class")
expect_identical(attr(ao_ord_fit, "model"),    "actor",  info = "actor HMC: model attr")
expect_true(attr(ao_ord_fit, "ordinal"),                 info = "actor HMC: ordinal")
expect_identical(attr(ao_ord_fit, "approach"), "Bayesian", info = "actor HMC: approach")
expect_silent(with_null_dev(plot(ao_ord_diag, object = ao_ord_fit)),
              info = "actor HMC: plot(diag, object)")

