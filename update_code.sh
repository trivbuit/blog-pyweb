#!/bin/bash
# echo 'Stopping...'
# docker stop blogPyWeb
# echo 'Removing...'
# docker rm blogPyWeb
# echo 'Building'
# docker build --tag python-django-docker .
# echo 'Running...'
# docker run -d  --name blogPyWeb --publish 80:80 python-django-docker

echo ''
docker stop $(docker ps -aq)
echo ''
docker rm $(docker ps -aq)
echo ''
docker rmi $(docker images -q)

echo ''
docker images
echo ''
docker ps -a