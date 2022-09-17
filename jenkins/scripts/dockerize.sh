#!/usr/bin/env sh

echo 'Build Docker Image'
set -x
docker build -f dockerfile-app . --tag simple-pyhton:1.0.0
set +x

echo 'Running Container'
set -x
docker run --rm -d --name simple-pyhton -p 3000:3000 simple-pyhton:1.0.0
set +x

echo 'Now...'
echo 'Visit http://localhost:3000/docs to see your RestAPI application in action.'
