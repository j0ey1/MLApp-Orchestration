#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="dockme4evr/ml-insight"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run ml-insight --image=$dockerpath --port=8080

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward ml-insight 8080:80