FROM ghcr.io/mdallaire/alpine:rolling@sha256:9010dc27406cd85242e128f9447f20f980cecface38f8a211676e1cedba70a12

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL
ARG TARGETARCH
ENV TARGETARCH=${TARGETARCH:-amd64}

#hadolint ignore=DL3018
RUN apk add --no-cache ca-certificates openssl ruby

#hadolint ignore=DL3018
RUN \
    apk add --no-cache --virtual=.build-deps \
        ruby-dev \
        ruby-ffi \
        build-base
#hadolint ignore=DL3018,DL3059
RUN \
    gem install waterfurnace_aurora -v ${VERSION}

RUN apk del --purge .build-deps

ENV TTY=/dev/ttyUSB0
ENV MQTT=mqtt://localhost
WORKDIR /usr/bin/
CMD [ "ruby aurora_mqtt_bridge $TTY $MQTT" ]

LABEL org.opencontainers.image.source="https://github.com/ccutrer/waterfurnace_aurora"
