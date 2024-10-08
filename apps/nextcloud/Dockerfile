FROM docker.io/library/nextcloud:30.0.0-fpm-alpine@sha256:df40181b01e78e771484c6f7f6d43bcd2914f5792df5f0488bbb2acc1d26cf8f

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
