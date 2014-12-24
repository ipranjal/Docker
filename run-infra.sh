#!/bin/bash

# 
# Start the DATA, MYSQL AND REDIS CONTAINERS 
#
docker run --detach --name data viacard/data
docker run --detach --name mysql --volumes-from data --env=MYSQL_ROOT_PASSWORD=z mysql
docker run --detach --name redis --volumes-from data redis redis-server --appendonly yes

