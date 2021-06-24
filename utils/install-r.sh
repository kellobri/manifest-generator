#!/usr/bin/env bash
# 
# Install a version of R on ubuntu-latest
#

sudo apt-get update
sudo apt-get install gdebi-core

cd /opt && curl -O https://cdn.rstudio.com/r/ubuntu-2004/pkgs/r-${R_VERSION}_1_amd64.deb
cd /opt && sudo gdebi r-${R_VERSION}_1_amd64.deb

sudo ln -s /opt/R/${R_VERSION}/bin/R /usr/local/bin/R
sudo ln -s /opt/R/${R_VERSION}/bin/Rscript /usr/local/bin/Rscript

