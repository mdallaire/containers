FROM docker.io/library/nextcloud:30.0.4-fpm-alpine@sha256:83b566bcdac262db029f220401684c8b301fe662d39c922515f1867d190a6e2a

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
