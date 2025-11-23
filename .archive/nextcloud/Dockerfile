FROM docker.io/library/nextcloud:32.0.2-fpm-alpine@sha256:3244153c0415cf231c570a19b4a42c2477554c2efefb5412fe0af791255715b4

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
