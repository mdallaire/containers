FROM docker.io/library/nextcloud:31.0.0-fpm-alpine@sha256:2e43676aad2ebdcd2a2d430478a8609a441b133e096a21d871139aaeab0eeff1

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
