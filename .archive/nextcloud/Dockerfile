FROM docker.io/library/nextcloud:30.0.4-fpm-alpine@sha256:4f36442c7bca4b76c13be327bf986597b6234e0aefa5cf72d332fb58ee71ae77

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
