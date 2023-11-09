#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
DOCKER_PATH="nhanct79/project-4-ml-microservice"

# Step 2:  
# Authenticate & tag
docker login --username=nhanct79
echo "Docker ID and Image: DOCKER_PATH"
docker image tag project_4_ml_microservice $DOCKER_PATH

# Step 3:
# Push image to a docker repository
docker image push $DOCKER_PATH

