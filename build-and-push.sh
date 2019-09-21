#!/bin/bash

set -e
set -x

for tag in apt rcppeigen inla rpkg server
do
  image=cmzambranat/sajama:$tag
  time docker pull $image
  time docker build -q -f Dockerfile.$tag --cache-from $image -t $image .
  docker push $image
done