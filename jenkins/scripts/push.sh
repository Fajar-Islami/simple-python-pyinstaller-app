#!/usr/bin/env sh

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

echo 'Now...'
echo 'Visit http://localhost:3000/docs to see your RestAPI application in action.'
