FROM debian:wheezy
MAINTAINER Mats Engstrom <mats.engstrom@gmail.com>

# Autostart UNIX pipe->socket bridge for Docker API at login
RUN echo socat TCP-L:2375,fork UNIX:/var/run/docker.sock \&  >> /root/.bashrc

# Install relavant packages for development
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y gcc g++ sudo python make mysql-client procps ngrep socat netcat-openbsd joe wget curl less git telnet libhiredis-dev libssl-dev libmysqlclient-dev
RUN apt-get clean

# Install node.js
RUN wget -O - http://nodejs.org/dist/v0.10.33/node-v0.10.33-linux-x64.tar.gz | gunzip | tar -x -C /usr/local/src/
RUN ln -sv /usr/local/src/node-v0.10.33-linux-x64/lib/node_modules/npm/bin/npm-cli.js /usr/bin/npm
RUN ln -sv /usr/local/src/node-v0.10.33-linux-x64/bin/node /usr/bin/node

# Copy in the redis client cli
ADD redis-cli /usr/local/bin/redis-cli

