# autoprune

A Docker image that prunes images with no associated containers, daily.


# Usage

Run:

    $ docker run \
    -d \
    --name autoprune \
    --restart always \
    -v /var/run/docker.sock:/var/run/docker.sock \
    interaction/autoprune
