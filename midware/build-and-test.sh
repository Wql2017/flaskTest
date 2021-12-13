#!/bin/bash

container_name="app-midware"

docker build -t ${container_name} .
docker container stop ${container_name}
docker container rm ${container_name}
sleep 1
docker run --name ${container_name} -d -p 5000:5000 ${container_name}

docker exec -ti ${container_name} /bin/bash