#!/bin/bash
set -e

#setting env variables
#username=manojvaddi
#repo=django-todo-app
#image_tag=latest

# Pull the Docker image from Docker Hub
docker pull manojvaddi497/django-todo-app:latest

#Fetch docker image id
#image_id=$(docker images | awk -F ' ' '{print $3}')

# Run the Docker image as a container
docker run -d -p 8000:8000 manojvaddi497/django-todo-app:latest