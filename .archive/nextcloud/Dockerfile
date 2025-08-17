FROM docker.io/library/nextcloud:31.0.8-fpm-alpine@sha256:520c8e63f77db9a1ca895d643f68542e2777e08ad736eae64eaedb3a1fcc11d6

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
