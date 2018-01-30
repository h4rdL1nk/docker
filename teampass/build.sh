#!/bin/bash

sudo docker build -t teampass-app -f Dockerfile.web .

sudo docker run -d \
    --name teampass-db-run \
    -p3306:3306 \
    -e MYSQL_ROOT_PASSWORD=4dm1nSd1g1tS -e MYSQL_DATABASE=teampass -e MYSQL_PASSWORD=t34mP4sSw0rD -e MYSQL_USER=teampassApp  \
    mysql:5.6
    
sudo docker run -d \
    --name teampass-app-run \
    --link teampass-db-run:db \
    -p80:80 -p443:443 \
    -v /certificates:/var/dockershared/passmgr/certificates:ro \
    teampass-app
