FROM docker.io/library/nextcloud:30.0.0-fpm-alpine@sha256:c13308eaba442e9af950fb79e4d2fc4e8258d22e9ef68b85953d6431b17618c1

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
