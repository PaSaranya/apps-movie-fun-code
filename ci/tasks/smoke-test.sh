#!/bin/bash

set -ex
apt-get update && apt-get install -y curl
if [ -z $MOVIE_SERVICE_URL ]; then
  echo "MOVIE_SERVICE_URL not set"
  exit 1
fi

pushd movie—fun-source
  echo "Running smoke tests for movie fun Service deployed at $MOVIE_SERVICE_URL"
  mvn test $MOVIE_SERVICE_URL
popd

exit 0