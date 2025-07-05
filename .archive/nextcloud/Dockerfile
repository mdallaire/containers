FROM docker.io/library/nextcloud:31.0.6-fpm-alpine@sha256:aa90206f2c54adaa0022bd9223a22a9eb402abc1791151110ef44a8e0b3149f3

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
