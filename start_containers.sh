#!/bin/bash

SCRIPTPATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker swarm init
docker service create --name fme_engine -p 7777:7777 --mount type=bind,target=/fmeengine/workspaces,source=$SCRIPTPATH/workspaces --mount type=bind,target=/fmeengine/results,source=$SCRIPTPATH/results --mount type=bind,target=/fmeengine/logs,source=$SCRIPTPATH/logs safesoftware/fme-engine-2017
docker service create --name web -p 80:80 --mount type=bind,target=/usr/local/apache2/htdocs,source=$SCRIPTPATH/results httpd:alpine
