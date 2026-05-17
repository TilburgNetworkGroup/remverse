#' Example relational event history with duration
#'
#' A small directed relational event history where each event has a known
#' start and end time, suitable for duration modeling.
#'
#' @format A data frame with columns:
#' \describe{
#'   \item{time}{Event start time.}
#'   \item{actor1}{Sender.}
#'   \item{actor2}{Receiver.}
#'   \item{end_time}{Event end time.}
#' }
#'
#' @examples
#' data(edgelist_duration)
#' reh <- remify(edgelist_duration, duration = TRUE)
#'
#' @usage data(edgelist_duration)
"edgelist_duration"
