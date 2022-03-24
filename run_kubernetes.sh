#!/usr/bin/env bash

dockerpath=farhan04/predict-housing-prices

# Run the Docker Hub container with kubernetes
kubectl create deploy predict-housing-prices --image=$dockerpath:latest

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward pod/predict-housing-prices-9448c4db6-48l5k --address 0.0.0.0 8000:80

