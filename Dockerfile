FROM rocker/verse:latest
MAINTAINER "Xiaotao Shen" shenxt1990@outlook.com

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
  libxml2

RUN install2.r --error \
  --deps TRUE \
  && R -e "BiocManager::install(c('Rdisop'))"
  
RUN apt-get update \
  && installGithub.r \
    omegahat/XMLSchema \
    tidymass/masstools
    

