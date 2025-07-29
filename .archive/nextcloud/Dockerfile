FROM docker.io/library/nextcloud:31.0.7-fpm-alpine@sha256:29071abdb658237a916aa5fcc83ee606367a8abf0f6282bdf9433f26401f2a00

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
