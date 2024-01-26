#!/bin/bash

# Build the Docker image
docker build -t react-js-app .

# Run Docker Compose
docker-compose up
chmod +x build.sh

