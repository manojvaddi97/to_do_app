#!/bin/bash
set -e

#setting env variables
#username=manojvaddi
#repo=django-todo-app
#image_tag=latest

#Fetch docker image id
container_id=$(docker ps | awk -F ' ' '{print $1}')

# stop the Docker container
docker stop $container_id