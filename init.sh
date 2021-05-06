#!/bin/sh

# change files modes
chmod +x scripts/*
chmod 600 letsencrypt/acme.json

# ghcr login
echo $GHCR_PAT | docker login ghcr.io -u $GHCR_USERNAME --password-stdin

# run traefik
docker-compose --project-name=traefik -f docker-compose.traefik.yml up -d

# run deployment
export ENV="blue"
docker-compose --project-name=$ENV up -d
