FROM docker.io/library/nextcloud:30.0.4-fpm-alpine@sha256:7f657dc0f8de03cabc4b4860e757dcfe8f10612dfc386db5327696b5239c6cfa

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
