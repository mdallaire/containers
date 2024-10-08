FROM docker.io/library/ruby:3.2.5-alpine3.20@sha256:37f546957703c9055fb2ae8c017513bc674d27792f9babc15d8ab6023325b55f

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL
ARG TARGETARCH
ENV TARGETARCH=${TARGETARCH:-amd64}

#hadolint ignore=DL3018
RUN apk add --no-cache ca-certificates bash openssl ruby ruby-ffi

#hadolint ignore=DL3018
RUN \
    apk add --no-cache --virtual=.build-deps \
        ruby-dev \
        build-base
#hadolint ignore=DL3018,DL3059
RUN \
    gem install waterfurnace_aurora -v ${VERSION}

RUN apk del --purge .build-deps

ENV TTY=/dev/ttyUSB0
ENV MQTT=mqtt://localhost
WORKDIR /usr/local/bundle/bin/
COPY ./apps/waterfurnace-aurora/entrypoint.sh /entrypoint.sh
CMD [ "/entrypoint.sh"]

LABEL org.opencontainers.image.source="https://github.com/ccutrer/waterfurnace_aurora"
