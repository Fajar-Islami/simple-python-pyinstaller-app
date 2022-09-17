#!/usr/bin/env sh

echo 'Cleaning depedencies'
set -x
docker stop simple-pyhton &&
	docker rmi simple-pyhton:1.0.0
set +x

echo 'DONE........'