#!/usr/bin/env Rscript

content_bundle <- paste0("bundles-","${{ env.R_VERSION }}"))

dir.create(content_bundle, showWarnings = FALSE)
file.copy("${{ env.CONTENT_PATH }}", content_bundle)

rsconnect::writeManifest(appDir = content_bundle)
