FROM docker.io/library/nextcloud:31.0.11-fpm-alpine@sha256:8e1ac1c7930de52c86fcc6b551b4cd733fe1c64f6e0a40ab36f425af8cb51468

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
