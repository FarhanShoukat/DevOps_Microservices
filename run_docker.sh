#!/usr/bin/env bash

docker build -t predict-housing-prices .

docker image ls

docker run -p 8000:80 predict-housing-prices
