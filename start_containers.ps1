# convert current directory to Unix style path
$scriptDir = $PSScriptRoot
$scriptDir = $scriptDir -replace "\\", "/"
$scriptDir = $scriptDir -replace "([A-z]):", '/$1'

# create services
docker swarm init
docker service create --name fme_engine -p 7777:7777 --mount type=volume,target=/fmeengine/workspaces,source=$scriptDir/workspaces --mount type=volume,target=/fmeengine/results,source=$scriptDir/results --mount type=volume,target=/fmeengine/logs,source=$scriptDir/logs safesoftware/fme-engine-2017
docker service create --name web -p 80:80 --mount type=volume,target=/usr/local/apache2/htdocs,source=$scriptDir/results httpd:alpine
