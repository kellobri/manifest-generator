#!/usr/bin/env Rscript

options(repos = c(REPO_NAME = "https://packagemanager.rstudio.com/all/__linux__/focal/latest"))

content_bundle <- paste0("bundles-", Sys.getenv("R_VERSION"))
#content_bundle <- paste0("bundles-", "${{ env.R_VERSION }}")
print(content_bundle)

dir.create(content_bundle, showWarnings = FALSE)
file.copy(Sys.getenv("CONTENT_PATH"), content_bundle)
#file.copy("${{ env.CONTENT_PATH }}", content_bundle)

list.files(content_bundle)

install.packages('rsconnect')

rsconnect::writeManifest(appDir = content_bundle)
