#!/bin/bash

docker builder prune --all --force --keep-storage ${BUILD_CACHE_SIZE:-50G}
docker image prune --all --force
