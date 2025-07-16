FROM docker.io/library/nextcloud:31.0.7-fpm-alpine@sha256:5462723d740ed0db653f2192bd72f291e47a159dc0ca639f7075553eab6d3947

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
