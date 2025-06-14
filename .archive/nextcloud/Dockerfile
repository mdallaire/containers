FROM docker.io/library/nextcloud:31.0.6-fpm-alpine@sha256:d78a1cacfcf0bbd9a4ff18a73d155e2d8072483a5d862865a2e9d36e050147ca

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
