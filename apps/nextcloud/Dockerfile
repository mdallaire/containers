FROM docker.io/library/nextcloud:30.0.2-fpm-alpine@sha256:7ed0537de1f450ade2bafa8f0e53be61434a0b73f033aab061c9512b5c3a738d

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
