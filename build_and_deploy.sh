#!/usr/bin/env bash

set -e

docker build -f $DOCKERFILE -t shumphrey/perl-common:$PERL$SUFFIX --build-arg TAG=$PERL .

if [ "$TRAVIS_BRANCH" == "master" ]; then
  docker login -u shumphrey -p "$DOCKER_PASSWORD"
  docker push shumphrey/perl-common:$PERL$SUFFIX
  if [[ "$LATEST" ]]; then
    docker tag shumphrey/perl-common:$PERL$SUFFIX shumphrey/perl-common:$LATEST
    docker push shumphrey/perl-common:$LATEST
  fi
fi
