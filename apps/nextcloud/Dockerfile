FROM docker.io/library/nextcloud:30.0.0-fpm-alpine@sha256:d3e10587df9e9b90e8d03833f92714324da4e8b69833d0d29c219a8be695c521

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
