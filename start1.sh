#!/bin/bash

# 
# Start the SOURCE, MYSQL AND REDIS CONTAINERS 
#
docker run --detach --name source source
docker run --detach --name mysql --volumes-from source --env=MYSQL_ROOT_PASSWORD=z mysql
docker run --detach --name redis --volumes-from source redis redis-server --appendonly yes

