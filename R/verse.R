pkgs <- c("newsapi", "guardian", "papers", "loc", "webhoser", 
  "webhoserx", "currents", "nytimes", "spotlight")

is_attached <- function(x) {
  paste0("package:", x) %in% search()
}

unloaded_pkgs <- function(pkgs){
  pkgs[!is_attached(pkgs)]
}

package_version <- function(x) {
  version <- as.character(unclass(utils::packageVersion(x))[[1]])

  if (length(version) > 3) {
    version[4:length(version)] <- crayon::red(as.character(version[4:length(version)]))
  }
  paste0(version, collapse = ".")
}

text_col <- function(x) {
  # If RStudio not available, messages already printed in black
  if (!rstudioapi::isAvailable()) {
    return(x)
  }

  if (!rstudioapi::hasFun("getThemeInfo")) {
    return(x)
  }

  theme <- rstudioapi::getThemeInfo()

  if (isTRUE(theme$dark)) crayon::white(x) else crayon::black(x)

}

newsr_attach <- function(pkgs){

  cat(
    cli::rule(
      left = "Attaching newsr",
      right = paste0("newsr ", utils::packageVersion("newsr"))
    ),
    "\n"
  )

  # pkg versions
  versions <- vapply(pkgs, package_version, character(1))
  packages <- paste0(
    crayon::green(cli::symbol$tick), " ", crayon::blue(format(pkgs)), " ",
    crayon::col_align(versions, max(crayon::col_nchar(versions)))
  )

  if (length(packages) %% 2 == 1) {
    packages <- append(packages, "")
  }
  col1 <- seq_len(length(packages) / 2)
  info <- paste0(packages[col1], "     ", packages[-col1])

  packageStartupMessage(
    text_col(
      paste(info, collapse = "\n")
    )
  )

  suppressPackageStartupMessages(
    lapply(pkgs, library, character.only = TRUE, warn.conflicts = FALSE)
  )
}

.onAttach <- function(...) {
  missing <- unloaded_pkgs(pkgs)
  if (length(missing) == 0)
    return()

  newsr_attach(missing)

}

#' @importFrom utils packageVersion