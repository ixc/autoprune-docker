#!/bin/bash

# Prune build cache for traditional Docker builder
docker builder prune --all --force --keep-storage ${BUILD_CACHE_SIZE:-50G}

if docker buildx version >/dev/null 2>&1; then
    docker buildx prune --keep-storage ${BUILD_CACHE_SIZE:-50G} --force
else
    echo "docker buildx is not available or not enabled on this system."
fi

docker image prune --all --force
