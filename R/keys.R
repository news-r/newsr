#' Check API keys
#' 
#' Check which API keys are set as environmental varibales, or in other words, which API calls you are set to use.
#' 
#' @note This does not check whether the API keys are valid, merely that they are set.
#'
#' @return Nothing.
#' 
#' @example
#' check_keys()
#' 
#' @export
check_keys <- function() {

  .check <- function(x){

    pkg_name <- toupper(x)
    var_name <- paste0(pkg_name, "_API_KEY")
    
    # exceptions
    if(x == "hoaxy")
      var_name <- "RAPIDAPI_API_KEY"

    if(x == "webhoser") # this one should eventually be changed
      var_name <- "WEBHOSER_TOKEN"

    key <- Sys.getenv(var_name)

    cat(crayon::blue(cli::symbol$info), "webhoserx, loc, and papers packages do not require keys\n")

    if(nchar(key) > 0)
      cat(crayon::green(cli::symbol$tick), x, "key found\n")
    else
      cat(crayon::red(cli::symbol$cross), x, "key not found\n")
  }

  trash <- purrr::map(PKGS, .check)

  invisible()
}

PKGS <- c(
  "newsapi",
  "currents",
  "factcheck",
  "guardian",
  "nytimes",
  "ft",
  "stocknews",
  "accunews",
  "newsriver",
  "hoaxy",
  "webhoser"
)