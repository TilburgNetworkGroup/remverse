#' remverse: Comprehensive Tools for Relational Event History Data
#'
#' A unified interface for relational event history analysis. remverse
#' re-exports key functions from remify, remstats, and remstimate, and depends
#' on remdata so its example datasets are available once remverse is attached.
#'
#' The `@import remdata` below declares remdata in the package namespace. It is
#' a `Depends` (attached for its datasets), and importing it here satisfies
#' R CMD check's requirement that a Depends package also be imported, so the
#' namespace resolves correctly when remverse is loaded but not attached.
#'
#' @keywords internal
#' @import remdata
"_PACKAGE"
