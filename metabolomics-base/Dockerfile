# base image: rocker/verse (with a specific version of R)
#   has R, RStudio, tidyverse, devtools, tex, and publishing-related packages
FROM rocker/verse:4.1.2
MAINTAINER "Xiaotao Shen" <shenxt1990@outlook.com>

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
  libxml2

##install packages from bioconductor
RUN install2.r --error --skipinstalled --ncpu -2 \
  --deps TRUE \
  && R -e "BiocManager::install(c('MSnbase', 'Rdisop', 'mzR', 'xcms'))"
