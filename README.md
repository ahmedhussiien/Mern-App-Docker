# Mern-App-Deployment

This repository contains dockerfiles, jenkinsfiles, and basic bash scripts for dockerizing a MERN app in both production and development.

## 🐳 Production Server With Docker

![alt text](https://github.com/ahmedhussiien/Mern-App-Docker/blob/master/diagrams/prod_server_docker.png?raw=true)

## 💡 Features

- [x] Jenkinsfiles to automated the building, testing, and deployment stages.
- [x] Backend
  - [x] Docker compose file for testing express app with mongo database.
  - [x] Dockerfile for build production ready image.
- [x] Frontend Dockerfiles for both testing and production
- [x] Docker compose file for Traefik configuration
- [x] Bash script for near zero downtime deployments ( Canary deployment )
