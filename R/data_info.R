#' history_durem
#'
#' A duration-extended version of the \code{history} dataset.  Each row is
#' one directed interaction among 10 actors with a start time (\code{time})
#' and end time (\code{end}).  Right-censored events have \code{end = NA}.
#'
#' @format A data frame with 115 rows and 6 columns:
#' \describe{
#'   \item{time}{Start time of the event (seconds)}
#'   \item{actor1}{Initiating actor ID}
#'   \item{actor2}{Receiving actor ID}
#'   \item{setting}{Context: \code{"work"} or \code{"social"}}
#'   \item{weight}{Intrinsic event weight}
#'   \item{end}{End time of the event (\code{NA} = right-censored)}
#' }
"history_durem"
