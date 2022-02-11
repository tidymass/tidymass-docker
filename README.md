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
docker pull jaspershen/tidymass-docker
```

And then:

```
docker run -e PASSWORD=tidymass -p 8787:8787 jaspershen/tidymass-docker
```

## Open the Rstudio server

Then open the browser and visit http://localhost:8787 to power on RStudio server. The user name is `rstudio` and the password is `tidymass`.

# Docker build and share (only for me)

## Build

After changing the `Dockerfile`, run below code in terminal to build image.

```
docker build --tag tidymass-docker .
```

## Create a repo (only for the first time)

1. If this is the first time to create a image, you need to create a repo in [`Docker Hub`](https://hub.docker.com/). Sign in or sign up.

2. Click the Create Repository button. 

3. For the repo name, use the name same with your building, here is `tidymass-docker`. Make sure the Visibility is `Public`.

4. Click the Create button!

5. If you look at the image below an example Docker command can be seen. This command will push to this repo.

## Push the image.

In the terminal, login to the Docker Hub using the command docker 

```
docker login -u YOUR-USER-NAME
```

here is:

```
docker login -u jaspershen
```

then inputs your password.

Use the `docker tag` command to give the `tidymass-docker` image a new name. 

```
docker tag tidymass-docker jaspershen/tidymass-docker
```

Now try your push command.

```
docker push jaspershen/tidymass-docker
```

# Reference:

1. https://aboland.ie/Docker.html

2. https://github.com/yufree/xcmsrocker

3. https://docs.docker.com/get-started/04_sharing_app/
