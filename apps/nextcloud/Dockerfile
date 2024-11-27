FROM docker.io/library/nextcloud:30.0.2-fpm-alpine@sha256:95bb7df72a20af7510a5f9f7155a1ea845acdbfbe97fb20437ba3cabf5ef7884

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
