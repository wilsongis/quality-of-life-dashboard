#!/bin/sh

docker build -t census-view -f Dockerfile .
docker run --privileged -ti -v ${PWD}:/usr/local/bin/census-view -w /usr/local/bin/census-view -p 3001:3001 census-view zsh
