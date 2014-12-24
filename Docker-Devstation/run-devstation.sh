#!/bin/bash
docker run --interactive --tty --rm --volumes-from=data --link=mysql:mysql --link=redis:redis --volume=/var/run/docker.sock:/var/run/docker.sock viacard/devstation

