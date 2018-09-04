#!/bin/bash
echo "Building docker images"
docker build -t $1 .
if [ $? -eq 0 ]; then
    echo "Build complete"
    echo "Deploying $1"
    sleep 1
    docker run -p 5000:5000 $1:latest
else
    echo "Docker build failed"
fi


