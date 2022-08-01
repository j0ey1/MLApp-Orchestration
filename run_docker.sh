#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t dockme4evr/housing_model .

# Step 2: 
# List docker images
docker image list

# Step 3: 
# Run flask app
docker run -p 8080:80 dockme4evr/housing_model