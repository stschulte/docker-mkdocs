# docker-mkdocs

[![Build Automated](https://img.shields.io/docker/automated/stschulte/docker-mkdocs.svg)](https://hub.docker.com/r/stschulte/docker-mkdocs)
[![Build Status](https://img.shields.io/docker/build/stschulte/docker-mkdocs.svg)](https://hub.docker.com/r/stschulte/docker-mkdocs/builds)


This repository aims to build a docker container with
[mkdocs](http://www.mkdocs.org) and
[mkdocs-materials](https://squidfunk.github.io/mkdocs-material/)

The container can be used as a wrapper for mkdocs.

## Usage

The container will assume that your mkdocs repository is mounted in `/out`
inside the container.

Go to your mkdocs repository and run the container as the current user.
```
docker run -v $(pwd):/out -v /etc/group:/etc/group:ro -v /etc/passwd:/etc/passwd:ro --user=${UID}:${GID}
```
