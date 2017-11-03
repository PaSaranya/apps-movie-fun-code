#!/bin/bash

set -ex
apt-get update && apt-get install -y curl
apt-get update && apt-get install -y maven
if [ -z $MOVIE_FUN_URL ]; then
  echo "MOVIE_FUN_URL not set"
  exit 1
fi

pushd movie—fun-source
  echo "Running smoke tests for movie fun Service deployed at $MOVIE_FUN_URL"
  MOVIE_FUN_URL=http://movie-fun-devotional-khansamah.apps.cumuluslabs.io mvn test
popd

exit 0