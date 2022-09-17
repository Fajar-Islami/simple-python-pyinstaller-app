#!/usr/bin/env sh

echo 'Cleaning depedencies'
set -x
docker stop simple-pyhton &&
	docker rmi simple-pyhton:1.0.0
set +x

echo 'DONE........'

# echo 'Add to staging'
# set -x
# git config --global user.email "ahmadfajarislami@protonmail.com"
# git config --global user.name "Fajar-Islami"
# git add .
# set +x

# echo 'Commit'
# set -x
# git commit -am 'push to heroku'
# set +x

# echo 'Push to Heroku'
# set -x
# git remote -v
# git branch
# git push -u heroku HEAD:master
# set +x


# echo 'DONE........'