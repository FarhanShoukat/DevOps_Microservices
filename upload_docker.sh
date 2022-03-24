#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

dockerpath=farhan04/predict-housing-prices

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag predict-housing-prices:latest $dockerpath:latest

docker push $dockerpath:latest
