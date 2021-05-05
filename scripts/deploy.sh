#!/bin/sh

if [ $(docker ps -f name=blue -q) ]
then
    ENV="green"
    OLD="blue"
else
    ENV="blue"
    OLD="green"
fi

echo "Pulling latest image"
docker-compose pull

echo "Starting "$ENV" container"
docker-compose --project-name=$ENV up -d

echo "Waiting..."
sleep 10s

echo "Stopping "$OLD" container"
docker-compose --project-name=$OLD down

echo "Cleaning unsued docker resources"
docker system prune -f