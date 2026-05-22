#' Simulated relational event history
#'
#' A simulated event sequence among 5 actors using the endogenous effects:
#' inertia, reciprocity, and itp.
#'
#' @format A dataframe with 1000 rows and 3 variables:
#' \describe{
#'  \item{time}{time of the event}
#'  \item{actor1}{the first actor involved in the event}
#'  \item{actor2}{the second actor involved in the event}
#'  \item{setting}{the setting of an event: \code{X} or \code{Y}}
#' }
#'
#' @usage data(edgelist0)
#' @source Simulated relational event sequence among 5 actors in a social network.
#'
#' @examples
#' data(edgelist0)
#'
#' @keywords dataset
"edgelist0"


#' Simulated relational event history
#'
#' Actor attributes of actors in event sequence \code{edgelist0}
#'
#' @format A dataframe with 1000 rows and 3 variables:
#' \describe{
#'  \item{name}{label of the actor}
#'  \item{time}{the time of measurement of the attribute}
#'  \item{job}{the job of the actor}
#' }
#'
#' @usage data(edgelist0_actors)
#' @source Simulated attributes of 5 actors in a social network.
#'
#' @examples
#' data(edgelist0_actors)
#'
#' @keywords dataset
"edgelist0_actors"
