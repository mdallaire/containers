FROM docker.io/library/nextcloud:30.0.1-fpm-alpine@sha256:b6d31dfc4c47008b70ae6ca7235a3dc90e5343e69c1d61dff7f27b842e8e3876

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
