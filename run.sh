#!/bin/sh

docker build -t dashboard -f Dockerfile .
docker run --privileged -ti -v ${PWD}:/usr/local/bin/dashboard -w /usr/local/bin/dashboard -p 3001:3001 dashboard zsh
