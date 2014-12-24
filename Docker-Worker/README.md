## Create the standard ViAcard Docker worker image

This repo holds all data for creating a the standardized ViAcard worker image for usage in Docker. The image is based on a small busybox image and is targeted to run our micro-architecture projects based on node.js appliations together with some small applications written in C.

The libraries that are added to this image are required for most of our C applications.

This image contains the following additions over the base busybox image:

* Node v0.10.33
* libcrypto.so.1.0.0
* libhiredis.so.0.10
* libz.so.1
* libmysqlclient.so.18


To build this image execute the following steps in the Docker host:
```
git clone --depth 1 https://github.com/viacard/Docker-Worker.git
cd Docker-Worker
docker build --tag=viacard-worker . 
```
