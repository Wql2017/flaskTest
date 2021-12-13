#!/bin/bash

container_name="app-nginx"

docker build -t app .
docker container stop ${container_name}
docker container rm ${container_name}
sleep 1
docker run --name ${container_name} -d -p 18080:80 app

docker exec -ti ${container_name} /bin/bash