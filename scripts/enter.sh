#!/bin/bash

IMAGE_NAME="bdfr:test"

docker run -it --rm \
    -v $(pwd)/downloads:/data \
    --entrypoint /bin/bash \
    $IMAGE_NAME \
    "$@"