FROM docker.io/library/nextcloud:30.0.4-fpm-alpine@sha256:35a7745fad403aeb9d154bcb4fd1ab6e886078bda5b796cd7319ee683cbc6b80

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
