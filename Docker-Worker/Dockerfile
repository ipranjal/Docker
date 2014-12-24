FROM progrium/busybox
MAINTAINER Mats Engstrom <mats@viacard.com>
RUN wget -O - http://nodejs.org/dist/v0.10.33/node-v0.10.33-linux-x64.tar.gz | gunzip | tar -x -C /root/
RUN ln -sv /root/node-v0.10.33-linux-x64/lib/node_modules/npm/bin/npm-cli.js /usr/bin/npm
RUN ln -sv /root/node-v0.10.33-linux-x64/bin/node /usr/bin/node
ADD libs/libstdc++.so.6 /usr/lib64/libstdc++.so.6
ADD libs/libcrypto.so.1.0.0 /usr/lib64/libcrypto.so.1.0.0
ADD libs/libhiredis.so.0.10 /usr/lib64/libhiredis.so.0.10
ADD libs/libz.so.1.2.8 /usr/lib64/libz.so.1
ADD libs/libmysqlclient.so.18.0.0 /usr/lib64/libmysqlclient.so.18
