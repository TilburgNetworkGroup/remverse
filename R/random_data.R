
#' Generated Relational Event History with Duration, Type, and Weight
#'
#' A randomly generated sequence of 999 duration relational events among 5
#' actors. Starting an event depended on inertia, reciprocity, sender
#' out-degree, incoming shared partners, and sender age; (undirected) ending an
#' event depended on the dyad's total active degree and the age difference of
#' the two actors. Exponential memory decay was used with a half-life of 2000.
#' Actor covariates are in \code{\link{info3}}.
#'
#' @name randomREH3
#' @docType data
#'
#' @format \code{data(randomREH3)} loads a \code{data.frame} with 999 rows and
#'   6 columns:
#'\describe{
#'    \item{\code{time}}{the timestamp indicating when each event started;}
#'    \item{\code{actor1}}{the actor that generated (initiated) the event;}
#'    \item{\code{actor2}}{the actor that received the event;}
#'    \item{\code{end}}{the time at which the event ended (\code{NA} = right-censored);}
#'    \item{\code{setting}}{the setting (type) of the event, either \code{social} or \code{work};}
#'    \item{\code{duration}}{the duration of each event (\code{end - time}), which can also serve as an event weight.}
#'}
#' @usage data(randomREH3)
#' @seealso \code{\link{info3}} for actor covariates.
"randomREH3"


#' Exogenous information of 5 actors
#'
#' A dataset containing the (hypothetical) age of the actors in a social
#' network of a relational event history \code{\link{randomREH3}}.
#'
#' @name info3
#' @docType data
#'
#' @format A dataframe with 7 rows and 4 variables:
#' \describe{
#'  \item{name}{numeric id of the actor}
#'  \item{time}{numeric value, describes when the value of the covariate
#'   changes, if it changes}
#'  \item{age}{age of the actor}
#'  \item{sex}{dichotomized sex of the actor (e.g., 0 = male, 1 = female)}
#' }
#'
#' @usage data(info3)
#' @seealso \code{\link{randomREH3}} for the relational event history.
#'
#' @keywords dataset
"info3"

