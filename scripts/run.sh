#!/bin/bash

IMAGE_NAME="bdfr:test"

docker run -it --rm \
    -v $(pwd)/downloads:/data \
    $IMAGE_NAME \
    "$@"