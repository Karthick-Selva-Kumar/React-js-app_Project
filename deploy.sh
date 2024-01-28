#!/bin/bash

# Run Docker Compose
docker-compose --down
docker-compose up -d

# Login to Docker registry
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin docker.io

# Push the Docker image to the registry
docker push karthickselvakumar1999/dev:myreactimg

