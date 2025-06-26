FROM docker.io/library/nextcloud:31.0.6-fpm-alpine@sha256:e80b83febbc5aba4c04d201b0d1ada744d1119d510248954f8d4105891cf5ddd

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
