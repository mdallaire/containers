FROM docker.io/library/nextcloud:30.0.2-fpm-alpine@sha256:8ba9ee0a5b30640c5e9ce90b09ba9d1a133adbef18a20eb14ac20b8456e8662b

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
