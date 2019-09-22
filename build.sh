#!/bin/bash

set -e 
set -x

for tag in apt rcppeigen inla rpkg server
do
  image=mzambranat/sajama:$tag
  docker build -q -f Dockerfile.$tag --cache-from $image -t $image .
done