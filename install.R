#!/usr/bin/env Rscript

if (!requireNamespace("devtools", quietly = TRUE)) {
  install.packages("devtools", repos = "https://cran.rstudio.com/")
}

gh_pat <- Sys.getenv("GITHUB_PAT")

if (identical(gh_pat, "")) {
  stop(
    "GitHub personal access token not found\n",
    "Please create a new token at <https://github.com/settings/tokens>\n",
    "Once that is complete, create an .Renviron document in your home directory",
    " and put 'GITHUB_PAT=<token string>' as the first line.\n",
    "NEVER SHARE THIS STRING!",
    call. = FALSE
  )
}

devtools::install_deps(dependencies = TRUE)

devtools::install_github("nyuglobalties/rcoder")
devtools::install_github("nyuglobalties/blueprintr")
