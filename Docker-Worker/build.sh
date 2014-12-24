#!/bin/bash

#
# CREATE A NEW GENERIC WORKER IMAGE
#

git clone --depth 1 git clone --depth 1 https://github.com/viacard/Docker-Worker.git
cd Docker-Worker
docker build --tag=viacard-worker . 
