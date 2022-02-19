FROM yufree/xcms:latest
MAINTAINER "Xiaotao Shen" shenxt1990@outlook.com

RUN apt-get update && apt-get install -y curl

RUN Rscript -e 'install.packages("remotes")'

RUN R -e "remotes::install_github('tidymass/tidymass')"
