#!/bin/sh
docker login -u ${DOCKER_USER} -p ${DOCKER_PASS}
if [ "$TRAVIS_BRANCH" = "master" ]; then
    TAG="latest"
else
    TAG="$TRAVIS_BRANCH"
fi
docker build -f Dockerfile -t wangxinyu1995/flask_ci_cd:$TAG .

docker push wangxinyu1995/flask_ci_cd:$TAG