#!/bin/bash

echo '----------------<Build>----------------'
docker compose build

echo '----------------<Start>----------------'
docker compose up -d

echo '----------------<mariadb: Start SSH>----------------'
docker container exec -it mariadb service ssh start
docker container exec -it mariadb service ssh status

echo '<<<<<<<<<<<<<<<< ENDE >>>>>>>>>>>>>>>>'