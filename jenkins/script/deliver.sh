#!/usr/bin/env sh

echo 'Building Docker Image'
set -x
docker build -f dockerfile-app . --tag simple-pyhton:1.0.0
set +x

echo 'Make Container'
set -x
make container
set +x

echo 'Now...'
echo 'Visit http://localhost:3000/docs to see your RestAPI application in action.'
