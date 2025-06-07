FROM docker.io/library/nextcloud:31.0.5-fpm-alpine@sha256:567c123f29d75d6899fcf66fba3f5fd5d5863782ad16229d42809e038f3a7e0e

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
