# Generated with R/update.R: do not edit by hand

#' @title FEtype
#'
#' @name FEtype
#' @importFrom remstats FEtype
#' @inherit remstats::FEtype
#' @export FEtype
FEtype <- function() {
  remstats::FEtype()
}

#' @title actor_effects
#'
#' @name actor_effects
#' @importFrom remstats actor_effects
#' @inherit remstats::actor_effects
#' @export actor_effects
actor_effects <- function(step = NULL) {
  remstats::actor_effects(step = step)
}

#' @title aomstats
#'
#' @name aomstats
#' @importFrom remstats aomstats
#' @inherit remstats::aomstats
#' @export aomstats
aomstats <- function(reh, sender_effects = NULL, receiver_effects = NULL, attr_actors = NULL, attr_dyads = NULL, method = c("pt", "pe"), memory = c("full", "window", "decay", "interval"), memory_value = Inf, start = 1, stop = Inf, display_progress = FALSE, attr_data, attributes, edgelist) {
  remstats::aomstats(reh = reh, sender_effects = sender_effects, receiver_effects = receiver_effects, attr_actors = attr_actors, attr_dyads = attr_dyads, method = method, memory = memory, memory_value = memory_value, start = start, stop = stop, display_progress = display_progress, attr_data = attr_data, attributes = attributes, edgelist = edgelist)
}

#' @title average
#'
#' @name average
#' @importFrom remstats average
#' @inherit remstats::average
#' @export average
average <- function(variable, attr_actors = NULL, scaling = c("none", "std"), attr_data) {
  remstats::average(variable = variable, attr_actors = attr_actors, scaling = scaling, attr_data = attr_data)
}

#' @title bind_remstats
#'
#' @name bind_remstats
#' @importFrom remstats bind_remstats
#' @inherit remstats::bind_remstats
#' @export bind_remstats
bind_remstats <- function(...) {
  remstats::bind_remstats(... = ...)
}

#' @title degreeDiff
#'
#' @name degreeDiff
#' @importFrom remstats degreeDiff
#' @inherit remstats::degreeDiff
#' @export degreeDiff
degreeDiff <- function(scaling = c("none", "std"), consider_type = TRUE) {
  remstats::degreeDiff(scaling = scaling, consider_type = consider_type)
}

#' @title degreeMax
#'
#' @name degreeMax
#' @importFrom remstats degreeMax
#' @inherit remstats::degreeMax
#' @export degreeMax
degreeMax <- function(scaling = c("none", "prop", "std"), consider_type = TRUE) {
  remstats::degreeMax(scaling = scaling, consider_type = consider_type)
}

#' @title degreeMin
#'
#' @name degreeMin
#' @importFrom remstats degreeMin
#' @inherit remstats::degreeMin
#' @export degreeMin
degreeMin <- function(scaling = c("none", "prop", "std"), consider_type = TRUE) {
  remstats::degreeMin(scaling = scaling, consider_type = consider_type)
}

#' @title difference
#'
#' @name difference
#' @importFrom remstats difference
#' @inherit remstats::difference
#' @export difference
difference <- function(variable, attr_actors = NULL, scaling = c("none", "std"), absolute = TRUE, attr_data) {
  remstats::difference(variable = variable, attr_actors = attr_actors, scaling = scaling, absolute = absolute, attr_data = attr_data)
}

#' @title dyad
#'
#' @name dyad
#' @importFrom remstats dyad
#' @inherit remstats::dyad
#' @export dyad
dyad <- function(variable, attr_dyads = NULL, scaling = c("none", "std"), x, variableName) {
  remstats::dyad(variable = variable, attr_dyads = attr_dyads, scaling = scaling, x = x, variableName = variableName)
}

#' @title event
#'
#' @name event
#' @importFrom remstats event
#' @inherit remstats::event
#' @export event
event <- function(x, variableName = NULL) {
  remstats::event(x = x, variableName = variableName)
}

#' @title indegreeReceiver
#'
#' @name indegreeReceiver
#' @importFrom remstats indegreeReceiver
#' @inherit remstats::indegreeReceiver
#' @export indegreeReceiver
indegreeReceiver <- function(scaling = c("none", "prop", "std"), consider_type = TRUE) {
  remstats::indegreeReceiver(scaling = scaling, consider_type = consider_type)
}

#' @title indegreeSender
#'
#' @name indegreeSender
#' @importFrom remstats indegreeSender
#' @inherit remstats::indegreeSender
#' @export indegreeSender
indegreeSender <- function(scaling = c("none", "prop", "std"), consider_type = TRUE) {
  remstats::indegreeSender(scaling = scaling, consider_type = consider_type)
}

#' @title inertia
#'
#' @name inertia
#' @importFrom remstats inertia
#' @inherit remstats::inertia
#' @export inertia
inertia <- function(scaling = c("none", "prop", "std"), consider_type = TRUE) {
  remstats::inertia(scaling = scaling, consider_type = consider_type)
}

#' @title isp
#'
#' @name isp
#' @importFrom remstats isp
#' @inherit remstats::isp
#' @export isp
isp <- function(unique = FALSE, scaling = c("none", "std"), consider_type = TRUE) {
  remstats::isp(unique = unique, scaling = scaling, consider_type = consider_type)
}

#' @title itp
#'
#' @name itp
#' @importFrom remstats itp
#' @inherit remstats::itp
#' @export itp
itp <- function(unique = FALSE, scaling = c("none", "std"), consider_type = TRUE) {
  remstats::itp(unique = unique, scaling = scaling, consider_type = consider_type)
}

#' @title maximum
#'
#' @name maximum
#' @importFrom remstats maximum
#' @inherit remstats::maximum
#' @export maximum
maximum <- function(variable, attr_actors = NULL, scaling = c("none", "std"), attr_data) {
  remstats::maximum(variable = variable, attr_actors = attr_actors, scaling = scaling, attr_data = attr_data)
}

#' @title minimum
#'
#' @name minimum
#' @importFrom remstats minimum
#' @inherit remstats::minimum
#' @export minimum
minimum <- function(variable, attr_actors = NULL, scaling = c("none", "std"), attr_data) {
  remstats::minimum(variable = variable, attr_actors = attr_actors, scaling = scaling, attr_data = attr_data)
}

#' @title osp
#'
#' @name osp
#' @importFrom remstats osp
#' @inherit remstats::osp
#' @export osp
osp <- function(unique = FALSE, scaling = c("none", "std"), consider_type = TRUE) {
  remstats::osp(unique = unique, scaling = scaling, consider_type = consider_type)
}

#' @title otp
#'
#' @name otp
#' @importFrom remstats otp
#' @inherit remstats::otp
#' @export otp
otp <- function(unique = FALSE, scaling = c("none", "std"), consider_type = TRUE) {
  remstats::otp(unique = unique, scaling = scaling, consider_type = consider_type)
}

#' @title outdegreeReceiver
#'
#' @name outdegreeReceiver
#' @importFrom remstats outdegreeReceiver
#' @inherit remstats::outdegreeReceiver
#' @export outdegreeReceiver
outdegreeReceiver <- function(scaling = c("none", "prop", "std"), consider_type = TRUE) {
  remstats::outdegreeReceiver(scaling = scaling, consider_type = consider_type)
}

#' @title outdegreeSender
#'
#' @name outdegreeSender
#' @importFrom remstats outdegreeSender
#' @inherit remstats::outdegreeSender
#' @export outdegreeSender
outdegreeSender <- function(scaling = c("none", "prop", "std"), consider_type = TRUE) {
  remstats::outdegreeSender(scaling = scaling, consider_type = consider_type)
}

#' @title psABA
#'
#' @name psABA
#' @importFrom remstats psABA
#' @inherit remstats::psABA
#' @export psABA
psABA <- function() {
  remstats::psABA()
}

#' @title psABAB
#'
#' @name psABAB
#' @importFrom remstats psABAB
#' @inherit remstats::psABAB
#' @export psABAB
psABAB <- function(consider_type = TRUE) {
  remstats::psABAB(consider_type = consider_type)
}

#' @title psABAY
#'
#' @name psABAY
#' @importFrom remstats psABAY
#' @inherit remstats::psABAY
#' @export psABAY
psABAY <- function(consider_type = TRUE) {
  remstats::psABAY(consider_type = consider_type)
}

#' @title psABB
#'
#' @name psABB
#' @importFrom remstats psABB
#' @inherit remstats::psABB
#' @export psABB
psABB <- function() {
  remstats::psABB()
}

#' @title psABBA
#'
#' @name psABBA
#' @importFrom remstats psABBA
#' @inherit remstats::psABBA
#' @export psABBA
psABBA <- function(consider_type = TRUE) {
  remstats::psABBA(consider_type = consider_type)
}

#' @title psABBY
#'
#' @name psABBY
#' @importFrom remstats psABBY
#' @inherit remstats::psABBY
#' @export psABBY
psABBY <- function(consider_type = TRUE) {
  remstats::psABBY(consider_type = consider_type)
}

#' @title psABX
#'
#' @name psABX
#' @importFrom remstats psABX
#' @inherit remstats::psABX
#' @export psABX
psABX <- function() {
  remstats::psABX()
}

#' @title psABXA
#'
#' @name psABXA
#' @importFrom remstats psABXA
#' @inherit remstats::psABXA
#' @export psABXA
psABXA <- function(consider_type = TRUE) {
  remstats::psABXA(consider_type = consider_type)
}

#' @title psABXB
#'
#' @name psABXB
#' @importFrom remstats psABXB
#' @inherit remstats::psABXB
#' @export psABXB
psABXB <- function(consider_type = TRUE) {
  remstats::psABXB(consider_type = consider_type)
}

#' @title psABXY
#'
#' @name psABXY
#' @importFrom remstats psABXY
#' @inherit remstats::psABXY
#' @export psABXY
psABXY <- function(consider_type = TRUE) {
  remstats::psABXY(consider_type = consider_type)
}

#' @title receive
#'
#' @name receive
#' @importFrom remstats receive
#' @inherit remstats::receive
#' @export receive
receive <- function(variable, attr_actors = NULL, scaling = c("none", "std"), attr_data) {
  remstats::receive(variable = variable, attr_actors = attr_actors, scaling = scaling, attr_data = attr_data)
}

#' @title recencyContinue
#'
#' @name recencyContinue
#' @importFrom remstats recencyContinue
#' @inherit remstats::recencyContinue
#' @export recencyContinue
recencyContinue <- function(consider_type = TRUE) {
  remstats::recencyContinue(consider_type = consider_type)
}

#' @title recencyReceiveReceiver
#'
#' @name recencyReceiveReceiver
#' @importFrom remstats recencyReceiveReceiver
#' @inherit remstats::recencyReceiveReceiver
#' @export recencyReceiveReceiver
recencyReceiveReceiver <- function(consider_type = TRUE) {
  remstats::recencyReceiveReceiver(consider_type = consider_type)
}

#' @title recencyReceiveSender
#'
#' @name recencyReceiveSender
#' @importFrom remstats recencyReceiveSender
#' @inherit remstats::recencyReceiveSender
#' @export recencyReceiveSender
recencyReceiveSender <- function(consider_type = TRUE) {
  remstats::recencyReceiveSender(consider_type = consider_type)
}

#' @title recencySendReceiver
#'
#' @name recencySendReceiver
#' @importFrom remstats recencySendReceiver
#' @inherit remstats::recencySendReceiver
#' @export recencySendReceiver
recencySendReceiver <- function(consider_type = TRUE) {
  remstats::recencySendReceiver(consider_type = consider_type)
}

#' @title recencySendSender
#'
#' @name recencySendSender
#' @importFrom remstats recencySendSender
#' @inherit remstats::recencySendSender
#' @export recencySendSender
recencySendSender <- function(consider_type = TRUE) {
  remstats::recencySendSender(consider_type = consider_type)
}

#' @title reciprocity
#'
#' @name reciprocity
#' @importFrom remstats reciprocity
#' @inherit remstats::reciprocity
#' @export reciprocity
reciprocity <- function(scaling = c("none", "prop", "std"), consider_type = TRUE) {
  remstats::reciprocity(scaling = scaling, consider_type = consider_type)
}

#' @title remstats
#'
#' @name remstats
#' @importFrom remstats remstats
#' @inherit remstats::remstats
#' @export remstats
remstats <- function(reh, tie_effects = NULL, sender_effects = NULL, receiver_effects = NULL, attr_actors = NULL, attr_dyads = NULL, method = c("pt", "pe"), memory = c("full", "window", "decay", "interval"), memory_value = NA, start = 1, stop = Inf, display_progress = FALSE, adjmat = NULL, get_adjmat = FALSE, attr_data, attributes, edgelist) {
  remstats::remstats(reh = reh, tie_effects = tie_effects, sender_effects = sender_effects, receiver_effects = receiver_effects, attr_actors = attr_actors, attr_dyads = attr_dyads, method = method, memory = memory, memory_value = memory_value, start = start, stop = stop, display_progress = display_progress, adjmat = adjmat, get_adjmat = get_adjmat, attr_data = attr_data, attributes = attributes, edgelist = edgelist)
}

#' @title rrankReceive
#'
#' @name rrankReceive
#' @importFrom remstats rrankReceive
#' @inherit remstats::rrankReceive
#' @export rrankReceive
rrankReceive <- function(consider_type = TRUE) {
  remstats::rrankReceive(consider_type = consider_type)
}

#' @title rrankSend
#'
#' @name rrankSend
#' @importFrom remstats rrankSend
#' @inherit remstats::rrankSend
#' @export rrankSend
rrankSend <- function(consider_type = TRUE) {
  remstats::rrankSend(consider_type = consider_type)
}

#' @title same
#'
#' @name same
#' @importFrom remstats same
#' @inherit remstats::same
#' @export same
same <- function(variable, attr_actors = NULL, attr_data) {
  remstats::same(variable = variable, attr_actors = attr_actors, attr_data = attr_data)
}

#' @title send
#'
#' @name send
#' @importFrom remstats send
#' @inherit remstats::send
#' @export send
send <- function(variable, attr_actors = NULL, scaling = c("none", "std"), attr_data) {
  remstats::send(variable = variable, attr_actors = attr_actors, scaling = scaling, attr_data = attr_data)
}

#' @title sp
#'
#' @name sp
#' @importFrom remstats sp
#' @inherit remstats::sp
#' @export sp
sp <- function(unique = FALSE, scaling = c("none", "std"), consider_type = TRUE) {
  remstats::sp(unique = unique, scaling = scaling, consider_type = consider_type)
}

#' @title spUnique
#'
#' @name spUnique
#' @importFrom remstats spUnique
#' @inherit remstats::spUnique
#' @export spUnique
spUnique <- function() {
  remstats::spUnique()
}

#' @title tie
#'
#' @name tie
#' @importFrom remstats tie
#' @inherit remstats::tie
#' @export tie
tie <- function(variable, attr_dyads = NULL, scaling = c("none", "std"), x, variableName) {
  remstats::tie(variable = variable, attr_dyads = attr_dyads, scaling = scaling, x = x, variableName = variableName)
}

#' @title tie_effects
#'
#' @name tie_effects
#' @importFrom remstats tie_effects
#' @inherit remstats::tie_effects
#' @export tie_effects
tie_effects <- function(directed = NULL, endogenous = NULL) {
  remstats::tie_effects(directed = directed, endogenous = endogenous)
}

#' @title tomstats
#'
#' @name tomstats
#' @importFrom remstats tomstats
#' @inherit remstats::tomstats
#' @export tomstats
tomstats <- function(effects, reh, attr_actors = NULL, attr_dyads = NULL, method = c("pt", "pe"), memory = c("full", "window", "decay", "interval"), memory_value = NA, start = 1, stop = Inf, display_progress = FALSE, adjmat = NULL, get_adjmat = FALSE, attr_data, attributes, edgelist) {
  remstats::tomstats(effects = effects, reh = reh, attr_actors = attr_actors, attr_dyads = attr_dyads, method = method, memory = memory, memory_value = memory_value, start = start, stop = stop, display_progress = display_progress, adjmat = adjmat, get_adjmat = get_adjmat, attr_data = attr_data, attributes = attributes, edgelist = edgelist)
}

#' @title totaldegreeDyad
#'
#' @name totaldegreeDyad
#' @importFrom remstats totaldegreeDyad
#' @inherit remstats::totaldegreeDyad
#' @export totaldegreeDyad
totaldegreeDyad <- function(scaling = c("none", "prop", "std"), consider_type = TRUE) {
  remstats::totaldegreeDyad(scaling = scaling, consider_type = consider_type)
}

#' @title totaldegreeReceiver
#'
#' @name totaldegreeReceiver
#' @importFrom remstats totaldegreeReceiver
#' @inherit remstats::totaldegreeReceiver
#' @export totaldegreeReceiver
totaldegreeReceiver <- function(scaling = c("none", "prop", "std"), consider_type = TRUE) {
  remstats::totaldegreeReceiver(scaling = scaling, consider_type = consider_type)
}

#' @title totaldegreeSender
#'
#' @name totaldegreeSender
#' @importFrom remstats totaldegreeSender
#' @inherit remstats::totaldegreeSender
#' @export totaldegreeSender
totaldegreeSender <- function(scaling = c("none", "prop", "std"), consider_type = TRUE) {
  remstats::totaldegreeSender(scaling = scaling, consider_type = consider_type)
}

#' @title userStat
#'
#' @name userStat
#' @importFrom remstats userStat
#' @inherit remstats::userStat
#' @export userStat
userStat <- function(x, variableName = NULL) {
  remstats::userStat(x = x, variableName = variableName)
}

