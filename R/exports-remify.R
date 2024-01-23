# Generated with R/update.R: do not edit by hand

#' @title getActorID
#'
#' @name getActorID
#' @importFrom remify getActorID
#' @inherit remify::getActorID
#' @export getActorID
getActorID <- function(x, actorName = NULL) {
  remify::getActorID(x = x, actorName = actorName)
}

#' @title getActorName
#'
#' @name getActorName
#' @importFrom remify getActorName
#' @inherit remify::getActorName
#' @export getActorName
getActorName <- function(x, actorID = NULL) {
  remify::getActorName(x = x, actorID = actorID)
}

#' @title getDyad
#'
#' @name getDyad
#' @importFrom remify getDyad
#' @inherit remify::getDyad
#' @export getDyad
getDyad <- function(x, dyadID, active = FALSE) {
  remify::getDyad(x = x, dyadID = dyadID, active = active)
}

#' @title getDyadID
#'
#' @name getDyadID
#' @importFrom remify getDyadID
#' @inherit remify::getDyadID
#' @export getDyadID
getDyadID <- function(x, actor1, actor2, type) {
  remify::getDyadID(x = x, actor1 = actor1, actor2 = actor2, type = type)
}

#' @title getRiskset
#'
#' @name getRiskset
#' @importFrom remify getRiskset
#' @inherit remify::getRiskset
#' @export getRiskset
getRiskset <- function(x) {
  remify::getRiskset(x = x)
}

#' @title getTypeID
#'
#' @name getTypeID
#' @importFrom remify getTypeID
#' @inherit remify::getTypeID
#' @export getTypeID
getTypeID <- function(x, typeName = NULL) {
  remify::getTypeID(x = x, typeName = typeName)
}

#' @title getTypeName
#'
#' @name getTypeName
#' @importFrom remify getTypeName
#' @inherit remify::getTypeName
#' @export getTypeName
getTypeName <- function(x, typeID = NULL) {
  remify::getTypeName(x = x, typeID = typeID)
}

#' @title rehshape
#'
#' @name rehshape
#' @importFrom remify rehshape
#' @inherit remify::rehshape
#' @export rehshape
rehshape <- function(data, output_format = c("relevent-rem", "relevent-rem.dyad"), ncores = 1L, optional_arguments = NULL) {
  remify::rehshape(data = data, output_format = output_format, ncores = ncores, optional_arguments = optional_arguments)
}

#' @title remify
#'
#' @name remify
#' @importFrom remify remify
#' @inherit remify::remify
#' @export remify
remify <- function(edgelist, directed = TRUE, ordinal = FALSE, model = c("tie", "actor"), actors = NULL, types = NULL, riskset = c("full", "active", "manual"), origin = NULL, omit_dyad = NULL, ncores = 1L) {
  remify::remify(edgelist = edgelist, directed = directed, ordinal = ordinal, model = model, actors = actors, types = types, riskset = riskset, origin = origin, omit_dyad = omit_dyad, ncores = ncores)
}

