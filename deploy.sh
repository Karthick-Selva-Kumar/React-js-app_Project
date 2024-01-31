#!/bin/bash

# Run Docker Compose
docker-compose down || true
docker-compose up -d

# Login to Docker registry
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin docker.io

#tagging the image:
docker tag myreactimg karthickselvakumar1999/dev

# Push the Docker image to the registry
docker push karthickselvakumar1999/dev
echo "the image has been pushed to docker hub"
