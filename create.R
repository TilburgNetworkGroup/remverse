# Load the package
library(remstimate)

# Get the exported functions
exported_functions <- sort(getNamespaceExports("remstimate"))

# Write lines
lapply(exported_functions, function(x) {
  write(
    c(
      paste("#'", x),
      "#'",
      paste0("#' See \\code{\\link[remstimate]{", x,"}}."),
      paste("#' @name", x),
      paste("#' @importFrom remstimate", x),
      paste0("#' @export ", x),
      "NULL",
      ""
    ), "R/exports-remstimate.R", append = TRUE
  )
})

