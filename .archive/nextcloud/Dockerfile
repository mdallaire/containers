FROM docker.io/library/nextcloud:30.0.3-fpm-alpine@sha256:36ecddee8c34f8958acdf2f53fb8738aa549a85a913557bb731e2fdfbb49a1f5

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
