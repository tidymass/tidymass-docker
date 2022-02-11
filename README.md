# tidymass-docker

Docker version of tidymass.

# Introduction

The `tidymass-docker` is the docker version of `tidymass`, all the packages in `tidymass` and the dependent packages have been installed.

# Steps

## Install `docker`

Please refer this [document ](https://www.docker.com/) to install docker, and then run it.

## Pull the tidymass-docker image.

Open you terminal and then type code below:

```
docker pull jaspershen/tidymass-docker:latest
```

And then:

```
docker run -e PASSWORD=tidymass -p 8787:8787 jaspershen/tidymass-docker:latest
```

The below command will link the RStudio home folder with the desktop of the local machine running the container. Anything saved or edited in the home folder when using the container will be stored on the local desktop.


```
docker run -e PASSWORD=tidymass -v ~/Desktop:/home/rstudio/ -p 8787:8787 jaspershen/tidymass-docker:latest
```

## Open the Rstudio server

Then open the browser and visit http://localhost:8787 to power on RStudio server. The user name is `rstudio` and the password is `tidymass`.

# Reference:

1. https://aboland.ie/Docker.html

2. https://github.com/yufree/xcmsrocker

3. https://docs.docker.com/get-started/04_sharing_app/
