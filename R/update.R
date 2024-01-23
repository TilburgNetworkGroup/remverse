# Define the target packages
packages <- c("remify", "remstats", "remstimate")

# Load packages
library(remify)
library(remstats)
library(remstimate)

# Function to create export documentation
createExportDoc <- function(package, export) {
  # Get the formal arguments of the export function
  export_formals <- formals(export)

  # Convert the formals to a character vector
  create_arguments <- sapply(names(export_formals), function(arg) {
    if (typeof(export_formals[[arg]]) == "symbol") {
      paste0(arg)
    } else {
      paste0(arg, " = ", deparse(export_formals[[arg]]))
    }
  })

  # Create the function 'create' string
  function_create_string <- paste0(
    paste0(export, " <- function", "("),
    paste0(create_arguments, collapse = ", "),
    ")"
  )

  # Convert the formals to a character vector
  call_arguments <- sapply(names(export_formals), function(arg) {
    paste0(arg, " = ", arg)
  })

  # Create the function 'call' string
  function_call_string <- paste0(
    paste0(package, "::", export, "("),
    paste0(call_arguments, collapse = ", "),
    ")"
  )

  # Print the lines
  lines <- c(
    paste("#' @title", export),
    "#'",
    paste("#' @name", export),
    paste("#' @importFrom", package, export),
    paste0("#' @inherit ", package, "::", export),
    paste("#' @export", export),
    paste(function_create_string, "{"),
    paste0("  ", function_call_string),
    "}",
    ""
  )
  return(lines)
}

# Function to check for new exports and update documentation files
updateExportDocs <- function(package) {
  package_exports <- sort(getNamespaceExports(package))

  if (length(package_exports) > 0) {
    export_docs <- lapply(package_exports, function(export) {
      createExportDoc(package, export)
    })

    # Add warning
    warning <- paste("# Generated with R/update.R: do not edit by hand", "", sep = "\n")
    export_docs <- c(warning, export_docs)

    # Specify the file path
    file_path <- paste0("exports-", package, ".R")

    # Open the file in write mode and truncate it
    file_con <- file(file.path("R", file_path), "w")
    close(file_con)

    # Rewrite the file
    write(unlist(export_docs), file.path("R", file_path), append = TRUE)
  }
}

# Check for and add new exports
sapply(packages, function(package) {
  updateExportDocs(package)
})
