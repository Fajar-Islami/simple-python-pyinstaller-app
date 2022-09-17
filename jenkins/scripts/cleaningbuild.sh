#!/usr/bin/env sh

echo 'Cleaning depedencies'
set -x
docker stop simple-pyhton &&
	docker rmi simple-pyhton:1.0.0
set +x

echo 'DONE........'

echo 'Add to staging'
set -x
git add .
set +x

echo 'Commit'
set -x
git commit -am 'push to heroku'
set +x

echo 'Push to Heroku'
set -x
git push -u heroku master
set +x

