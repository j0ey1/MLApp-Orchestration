#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=dockme4evr/ml-insight

# Step 2:  
# Authenticate & tag
docker login -u dockme4evr
docker tag ml-insight $dockerpath
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push dockme4evr/ml-insight