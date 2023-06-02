# Load the package
library(remify)

# Get the exported functions
exported_functions <- sort(getNamespaceExports("remify"))

# Write lines
lapply(exported_functions, function(x) {
  write(
    c(
      paste("#'", x),
      "#'",
      paste0("#' See \\code{\\link[remify]{", x,"}}."),
      paste("#' @name", x),
      paste("#' @importFrom remify", x),
      paste0("#' @export ", x),
      "NULL",
      ""
    ), "R/exports-remify.R", append = TRUE
  )
})

