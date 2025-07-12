FROM docker.io/library/nextcloud:31.0.7-fpm-alpine@sha256:ad3f4f11f936721551a92bf82dbb147d217a7b8fdf4ef2e0e4eb4d2aedcfa429

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
