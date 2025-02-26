FROM docker.io/library/nextcloud:30.0.6-fpm-alpine@sha256:e1fcb7d9027c6164eb5b3955ca3412f8ecffa26bb48233544793b6e833b97dc7

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
