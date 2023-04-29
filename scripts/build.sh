#!/bin/bash

NAME="bdfr"
TAG="test"
IMAGE_NAME="$NAME:$TAG"

docker build -t $IMAGE_NAME .