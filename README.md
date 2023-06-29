# autoprune

Docker image that prunes build cache, buildx cache and images with no associated containers, daily.

## Usage

Run:

    $ docker run \
    -d \
    -e BUILD_CACHE_SIZE=50G \
    --name autoprune \
    --restart always \
    -v /var/run/docker.sock:/var/run/docker.sock \
    interaction/autoprune
