FROM docker.io/library/nextcloud:31.0.7-fpm-alpine@sha256:42e5e8d3311a7d17bf2550ee4941ce04697991c29de1c6fe584f8f8d5249deb7

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
