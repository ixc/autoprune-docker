FROM alpine:3

RUN apk update \
    && apk upgrade \
    && apk add \
        bash \
        docker \
        tini \
    && rm -rf /var/cache/apk/*

COPY autoprune.sh /etc/periodic/daily/autoprune

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["crond", "-f", "-L", "/dev/stdout"]
