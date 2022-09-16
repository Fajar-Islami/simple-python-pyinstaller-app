#!/usr/bin/env sh

echo 'Installing depedencies'
set -x
pip3 install --user --upgrade -r ./config/requirements.txt
set +x

echo 'Running REST'
set -x
python3 -m uvicorn sources.main:app --reload --port 3000 
& sleep 1
echo $! > .pidfile
set +x

echo 'Now...'
echo 'Visit http://localhost:3000/docs to see your RestAPI application in action.'
