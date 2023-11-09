#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
DEPLOYMENT_NAME="project-4-ml-app"
DOCKER_PATH="nhanct79/project-4-ml-microservice"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment ${DEPLOYMENT_NAME} --image=${DOCKER_PATH}


# Step 3:
# List kubernetes pods
kubectl get pods

POD_NAME=$(kubectl get pods | grep ${DEPLOYMENT_NAME} | awk '{print $1}')
echo "Pod name: ${POD_NAME}"
echo "Forwarding port..."
sleep 10

# Step 4:
# Forward the container port to a host
echo "Pod name: ${POD_NAME}"
kubectl port-forward pod/${POD_NAME} --address 0.0.0.0 8011:80
