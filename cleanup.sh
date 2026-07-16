#!/bin/bash

echo "Cleaning unused Docker resources..."

docker image prune -f

docker container prune -f

docker system df

echo "Cleanup completed."