#!/bin/bash

set -e

cd Docker-Data && ./build-data.sh
cd ..
cd Docker-Devstation && ./build-devstation.sh
cd ..
cd Docker-Worker && ./build-worker.sh
cd ..

