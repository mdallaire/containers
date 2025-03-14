FROM docker.io/library/nextcloud:31.0.0-fpm-alpine@sha256:70bcb8f09fb31806c6e01e338200ab56a262a4620865249a312ec8900dcb824d

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
