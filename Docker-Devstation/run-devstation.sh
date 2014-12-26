#!/bin/bash
docker attach dev
if [ "$?" == "1" ]; then 
docker run --interactive --tty --rm --name=dev --volumes-from=data --link=mysql:mysql --link=redis:redis --volume=/var/run/docker.sock:/var/run/docker.sock viacard/devstation
fi 

