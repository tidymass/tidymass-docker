FROM yufree/xcms:latest
MAINTAINER "Xiaotao Shen" shenxt1990@outlook.com

RUN apt-get update && apt-get install -y curl

## RUN R -e 'install.packages("usethis")'

COPY .Renviron /root/.Renviron

COPY demo_data/ /home/rstudio/demo_data/

RUN chmod 777 /home/rstudio/demo_data/

RUN R -e 'install.packages("remotes")'

RUN R -e "remotes::install_gitlab('jaspershen/tidymass',dependencies = TRUE)"



