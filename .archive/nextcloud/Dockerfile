FROM docker.io/library/nextcloud:30.0.5-fpm-alpine@sha256:d4ab53cffbf1f6cffb5c2db7ace734be6cb68d12e6622ecb72da1d0cac7bea65

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
