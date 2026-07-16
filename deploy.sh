#!/bin/bash

echo "Stopping existing container..."

docker stop flask-app || true

docker rm flask-app || true

echo "Building Docker image..."

docker build -t flask-app .

echo "Starting new container..."

docker run -d \
  --name flask-app \
  -p 5000:5000 \
  flask-app

echo "Deployment completed successfully."