library(remotes)  # Load the 'remotes' package

# Define the target packages
packages <- c("remify", "remstats", "remstimate")

# Exports in 'remverse'
remverse_exports <- sort(getNamespaceExports("remverse"))

# Function to create export documentation
createExportDoc <- function(package, export) {
  lines <- c(
    paste0("#'", export),
    "#'",
    paste0("#' See \\code{\\link[", package, "]{", export, "}}."),
    paste0("#' @name", export),
    paste0("#' @importFrom", package, export),
    paste0("#' @export ", export),
    "NULL",
    ""
  )
  return(lines)
}

# Function to check for new exports and update documentation files
updateExportDocs <- function(package) {
  package_exports <- sort(getNamespaceExports(package))
  new_exports <- package_exports[!(package_exports %in% remverse_exports)]

  if (length(new_exports) > 0) {
    export_docs <- lapply(new_exports, function(export) {
      createExportDoc(package, export)
    })
    write(unlist(export_docs), file.path("R", paste0("exports-", package, ".R")), append = TRUE)
  }
}

# Check for and add new exports
lapply(packages, updateExportDocs)

# Check for removed exports (manual removal required)
removed_exports <- remverse_exports[!(remverse_exports %in% unlist(lapply(packages, getNamespaceExports)))]
if (length(removed_exports) > 0) {
  message("The following exports have been removed and should be manually removed: ")
  message(removed_exports)
}
