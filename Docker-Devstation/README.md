## Create the standard ViAcard Docker Devstation image

This repo holds all data for creating a the standardized ViAcard development station image for usage in Docker. The image is based on a Debian Wheezy image.

This image contains the following additions over the base Wheezy image:

* git 
* gcc 
* make 
* redis-cli
* mysql-client
* procps
* ngrep 
* joe 
* socat
* netcat
* wget 
* curl 
* less 
* telnet 
* libhiredis-dev 
* libssl-dev 
* libmysqlclient-dev


To build this image execute the following steps in the Docker host:
```
git clone --depth 1 https://github.com/viacard/Docker-Devstation.git
cd Docker-Devstation
docker build --tag=viacard/devstation . 
```
