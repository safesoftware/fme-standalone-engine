#!/bin/bash

SCRIPTPATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker swarm init
docker service create --name fme_engine -p 7777:7777 --mount type=bind,target=/fmeengine/workspaces,source=$SCRIPTPATH/workspaces --mount type=bind,target=/fmeengine/results,source=$SCRIPTPATH/results --mount type=bind,target=/fmeengine/logs,source=$SCRIPTPATH/logs safesoftware/fme-engine-2017
docker run -it -d -p 5000:8080 -v /var/run/docker.sock:/var/run/docker.sock manomarks/visualizer

