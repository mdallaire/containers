FROM ghcr.io/mdallaire/alpine:rolling@sha256:3c12a1ac409f41d0a4b9f5012456c78ab4a7523a00046617155a2cd4345dbb38

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL
ARG TARGETARCH
ENV TARGETARCH=${TARGETARCH:-amd64}

#hadolint ignore=DL3018
RUN apk add --no-cache ca-certificates openssl ruby ruby-ffi

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
WORKDIR /usr/bin/
COPY ./apps/waterfurnace-aurora/entrypoint.sh /entrypoint.sh
CMD [ "/entrypoint.sh"]

LABEL org.opencontainers.image.source="https://github.com/ccutrer/waterfurnace_aurora"
