#!/bin/bash

docker compose build

docker compose up -d

docker container exec -it mariadb service ssh start

docker container exec -it mariadb service ssh status
