#!/bin/bash

# Assuming the following environment variables are set:
# DOCKER_REGISTRY_CREDS=<your_credentials_id>
# DOCKER_USERNAME=<your_docker_username>
# DOCKER_PASSWORD=<your_docker_password>
# DOCKER_BFLASK_IMAGE=<your_docker_image>

# Login to Docker registry
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin docker.io

# Push the Docker image to the registry
docker push "$DOCKER_BFLASK_IMAGE"

