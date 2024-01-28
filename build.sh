#!/bin/bash

# Build the Docker image
docker build -t myreactimg:latest .

# Run Docker Compose
docker-compose --down

docker-compose up -d





