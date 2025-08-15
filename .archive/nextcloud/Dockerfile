FROM docker.io/library/nextcloud:31.0.8-fpm-alpine@sha256:d406744a3383b23f1ed8611a99ea88f28c17e3c2e2279ce1504576bd481b074f

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
