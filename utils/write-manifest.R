#!/usr/bin/env Rscript

options(repos = c(REPO_NAME = "https://packagemanager.rstudio.com/all/__linux__/focal/latest"))

content_bundle <- paste0("bundles-","${{ env.R_VERSION }}")

dir.create(content_bundle, showWarnings = FALSE)
file.copy("${{ env.CONTENT_PATH }}", content_bundle)

install.packages('rsconnect')

rsconnect::writeManifest(appDir = content_bundle)
