#!/bin/sh
docker login --username $DOCKER_USER --password $DOCKER_PASS
if [ "$TRAVIS_BRANCH" = "master" ]; then
    TAG="latest"
else
    TAG="$TRAVIS_BRANCH"
fi
docker build -f Dockerfile -t wangxinyu1995:$TAG .
docker tag wangxinyu1995 $DOCKER_REPO
docker push $DOCKER_REPO