FROM docker.io/library/nextcloud:30.0.1-fpm-alpine@sha256:d741e4a076656fe4fd9aced80605548a180ccc2e5e12e1dfe8b978ca494436c6

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
