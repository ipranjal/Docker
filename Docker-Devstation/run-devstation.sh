#!/bin/bash
docker run --interactive --tty --rm --volumes-from source --link mysql:mysql --link redis:redis -v /var/run/docker.sock:/var/run/docker.sock viacard/devstation
