FROM ghcr.io/mdallaire/alpine:rolling@sha256:229957e5173521a3aee7849e8ce925e42a914230a2a41ecd5c90a87f7d17b690

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
CMD [ "ruby", "aurora_mqtt_bridge", "$TTY", "$MQTT" ]

LABEL org.opencontainers.image.source="https://github.com/ccutrer/waterfurnace_aurora"
