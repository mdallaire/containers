FROM docker.io/library/nextcloud:30.0.4-fpm-alpine@sha256:cc6a89eed5e5b24bbfb4f40b6eda77afd0b0abab175db29d2ef27c26885cbce7

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache \
        samba-client
ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
